// -*- C++ -*-

// ================================================================
/**
 *  @file Messaging.h
 *
 *  $Id$
 *
 *  Include all the required headers to use CORBA Messaging easily.
 *
 *  @author Carlos O'Ryan <coryan@uci.edu>
 */
// ================================================================

#ifndef TAO_MESSAGING_H
#define TAO_MESSAGING_H
#include "ace/pre.h"

#include "MessagingC.h"

// Typedef for the Reply Handler Skeleton.
// This is handcrafted not generated by the IDL compiler.

class TAO_InputCDR;

enum TAO_AMI_Reply_Status
{
  TAO_AMI_REPLY_OK,
  // Reply is normal.

  TAO_AMI_REPLY_NOT_OK,
  // Reply is not normal and no exceptions

  TAO_AMI_REPLY_USER_EXCEPTION,
  // An user exception was raised.

  TAO_AMI_REPLY_SYSTEM_EXCEPTION
  // An system exception was raised.
};


#if (TAO_HAS_AMI_CALLBACK == 1)

typedef void (*TAO_Reply_Handler_Skeleton)(
    TAO_InputCDR &,
    Messaging::ReplyHandler *,
    CORBA::ULong reply_status
    TAO_ENV_ARG_DECL_NOT_USED
    );

#endif /* TAO_HAS_AMI_CALLBACK */

#include "ace/post.h"
#endif /* TAO_MESSAGING_H */
