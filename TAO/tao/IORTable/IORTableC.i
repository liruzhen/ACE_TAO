// -*- C++ -*-
//
// $Id$

// ****  Code generated by the The ACE ORB (TAO) IDL Compiler ****
// TAO and the TAO IDL Compiler have been developed by:
//       Center for Distributed Object Computing
//       Washington University
//       St. Louis, MO
//       USA
//       http://www.cs.wustl.edu/~schmidt/doc-center.html
// and
//       Distributed Object Computing Laboratory
//       University of California at Irvine
//       Irvine, CA
//       USA
//       http://doc.ece.uci.edu/
//
// Information about TAO is available at:
//     http://www.cs.wustl.edu/~schmidt/TAO.html

// *************************************************************
// Inline operations for exception IORTable::AlreadyBound
// *************************************************************

// *************************************************************
// Inline operations for exception IORTable::NotFound
// *************************************************************


#if !defined (_IORTABLE_TABLE___CI_)
#define _IORTABLE_TABLE___CI_

ACE_INLINE IORTable::Table_ptr
tao_IORTable_Table_duplicate (
    IORTable::Table_ptr p
  )
{
  return IORTable::Table::_duplicate (p);
}

ACE_INLINE void
tao_IORTable_Table_release (
    IORTable::Table_ptr p
  )
{
  CORBA::release (p);
}

ACE_INLINE IORTable::Table_ptr
tao_IORTable_Table_nil (
    void
  )
{
  return IORTable::Table::_nil ();
}

ACE_INLINE IORTable::Table_ptr
tao_IORTable_Table_narrow (
    CORBA::Object *p
    TAO_ENV_ARG_DECL
  )
{
  return IORTable::Table::_narrow (p TAO_ENV_ARG_PARAMETER);
}

ACE_INLINE CORBA::Object *
tao_IORTable_Table_upcast (
    void *src
  )
{
  IORTable::Table **tmp =
    ACE_static_cast (IORTable::Table **, src);
  return *tmp;
}


#endif /* end #if !defined */


#if !defined (_IORTABLE_LOCATOR___CI_)
#define _IORTABLE_LOCATOR___CI_

ACE_INLINE IORTable::Locator_ptr
tao_IORTable_Locator_duplicate (
    IORTable::Locator_ptr p
  )
{
  return IORTable::Locator::_duplicate (p);
}

ACE_INLINE void
tao_IORTable_Locator_release (
    IORTable::Locator_ptr p
  )
{
  CORBA::release (p);
}

ACE_INLINE IORTable::Locator_ptr
tao_IORTable_Locator_nil (
    void
  )
{
  return IORTable::Locator::_nil ();
}

ACE_INLINE IORTable::Locator_ptr
tao_IORTable_Locator_narrow (
    CORBA::Object *p
    TAO_ENV_ARG_DECL
  )
{
  return IORTable::Locator::_narrow (p TAO_ENV_ARG_PARAMETER);
}

ACE_INLINE CORBA::Object *
tao_IORTable_Locator_upcast (
    void *src
  )
{
  IORTable::Locator **tmp =
    ACE_static_cast (IORTable::Locator **, src);
  return *tmp;
}


#endif /* end #if !defined */

