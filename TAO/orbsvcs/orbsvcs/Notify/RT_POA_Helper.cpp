// $Id$

#include "RT_POA_Helper.h"
#include "tao/RTCORBA/RTCORBA.h"
#include "tao/debug.h"
#include "orbsvcs/NotifyExtC.h"
#include "RT_Properties.h"

#if ! defined (__ACE_INLINE__)
#include "RT_POA_Helper.inl"
#endif /* __ACE_INLINE__ */

ACE_RCSID(RT_Notify, TAO_NS_RT_POA_Helper, "$Id$")

TAO_NS_RT_POA_Helper::~TAO_NS_RT_POA_Helper ()
{
}

void
TAO_NS_RT_POA_Helper::init (PortableServer::POA_ptr parent_poa, const NotifyExt::ThreadPoolParams& tp_params ACE_ENV_ARG_DECL)
{
  char child_poa_name[32];
  ACE_OS_String::itoa (ACE_OS::rand (), child_poa_name, 10);

  this->init (parent_poa, child_poa_name, tp_params ACE_ENV_ARG_PARAMETER);
}

void
TAO_NS_RT_POA_Helper::init (PortableServer::POA_ptr parent_poa, const char* poa_name
                                 , const NotifyExt::ThreadPoolParams& tp_params ACE_ENV_ARG_DECL)
{
  CORBA::PolicyList policy_list (4);

  this->set_policy (parent_poa, policy_list ACE_ENV_ARG_PARAMETER);
  ACE_CHECK;

  RTCORBA::RTORB_var rt_orb = TAO_NS_RT_PROPERTIES::instance ()->rt_orb ();

  policy_list.length (3);
  policy_list[2] =
    rt_orb->create_priority_model_policy (RTCORBA::CLIENT_PROPAGATED,
                                          0
                                          ACE_ENV_ARG_PARAMETER);
  ACE_CHECK;

  if (TAO_debug_level > 0)
    ACE_DEBUG ((LM_DEBUG, "Creating threadpool: static threads = %d, def. prio = %d\n"
                , tp_params.static_threads, tp_params.default_priority));

  // Create the thread-pool.
  RTCORBA::ThreadpoolId threadpool_id =
    rt_orb->create_threadpool (tp_params.stacksize,
                               tp_params.static_threads,
                               tp_params.dynamic_threads,
                               tp_params.default_priority,
                               tp_params.allow_request_buffering,
                               tp_params.max_buffered_requests,
                               tp_params.max_request_buffer_size
                               ACE_ENV_ARG_PARAMETER);
  ACE_CHECK;

  policy_list.length (4);
  policy_list[3] =
    rt_orb->create_threadpool_policy (threadpool_id
                                      ACE_ENV_ARG_PARAMETER);
  ACE_CHECK;

  this->create_i (parent_poa, poa_name, policy_list ACE_ENV_ARG_PARAMETER);
}

void
TAO_NS_RT_POA_Helper::init (PortableServer::POA_ptr parent_poa, const NotifyExt::ThreadPoolLanesParams& tpl_params ACE_ENV_ARG_DECL)
{
  char child_poa_name[32];
  ACE_OS_String::itoa (ACE_OS::rand (), child_poa_name, 10);

  this->init (parent_poa, child_poa_name, tpl_params ACE_ENV_ARG_PARAMETER);
}

void
TAO_NS_RT_POA_Helper::init (PortableServer::POA_ptr parent_poa, const char* poa_name
                                 , const NotifyExt::ThreadPoolLanesParams& tpl_params ACE_ENV_ARG_DECL)
{
  CORBA::PolicyList policy_list (4);

  this->set_policy (parent_poa, policy_list ACE_ENV_ARG_PARAMETER);
  ACE_CHECK;

  RTCORBA::RTORB_var rt_orb = TAO_NS_RT_PROPERTIES::instance ()->rt_orb ();

  policy_list.length (3);
  policy_list[2] =
    rt_orb->create_priority_model_policy (RTCORBA::CLIENT_PROPAGATED,
                                          0
                                          ACE_ENV_ARG_PARAMETER);
  ACE_CHECK;

  // Populate RTCORBA Lanes.
  RTCORBA::ThreadpoolLanes lanes (tpl_params.lanes.length ());
  lanes.length (tpl_params.lanes.length ());

  for (CORBA::ULong index = 0; index < tpl_params.lanes.length (); ++index)
    {
      if (TAO_debug_level > 0)
            {
              ACE_DEBUG ((LM_DEBUG, "Creating threadpool lane %d: priority = %d, static threads = %d\n",
                          index, tpl_params.lanes[index].lane_priority, tpl_params.lanes[index].static_threads));
            }

      lanes[index].lane_priority = tpl_params.lanes[index].lane_priority;
      lanes[index].static_threads = tpl_params.lanes[index].static_threads;
      lanes[index].dynamic_threads = tpl_params.lanes[index].dynamic_threads;
    }

  // Create the thread-pool.
  RTCORBA::ThreadpoolId threadpool_id =
    rt_orb->create_threadpool_with_lanes (tpl_params.stacksize,
                                          lanes,
                                          tpl_params.allow_borrowing,
                                          tpl_params.allow_request_buffering,
                                          tpl_params.max_buffered_requests,
                                          tpl_params.max_request_buffer_size
                                          ACE_ENV_ARG_PARAMETER);
  ACE_CHECK;

  policy_list.length (4);
  policy_list[3] =
    rt_orb->create_threadpool_policy (threadpool_id
                                      ACE_ENV_ARG_PARAMETER);
  ACE_CHECK;

  this->create_i (parent_poa, poa_name, policy_list ACE_ENV_ARG_PARAMETER);
}

void
TAO_NS_RT_POA_Helper::init (PortableServer::POA_ptr parent_poa ACE_ENV_ARG_DECL)
{
  CORBA::PolicyList policy_list (1);

  RTCORBA::RTORB_var rt_orb = TAO_NS_RT_PROPERTIES::instance ()->rt_orb ();

  policy_list.length (1);

  policy_list[0] =
    rt_orb->create_priority_model_policy (RTCORBA::CLIENT_PROPAGATED,
                                          0
                                          ACE_ENV_ARG_PARAMETER);
  ACE_CHECK;

  char child_poa_name[32];
  ACE_OS_String::itoa (ACE_OS::rand (), child_poa_name, 10);

  this->create_i (parent_poa, child_poa_name, policy_list ACE_ENV_ARG_PARAMETER);
}
