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
// and
//       Institute for Software Integrated Systems
//       Vanderbilt University
//       Nashville, TN
//       USA
//       http://www.isis.vanderbilt.edu/
//
// Information about TAO is available at:
//     http://www.cs.wustl.edu/~schmidt/TAO.html

#include "Default_ORTC.h"
#include "tao/Typecode.h"
#include "tao/CDR.h"
#include "tao/Any.h"
#include "tao/Any_Impl_T.h"

// TAO_IDL - Generated from
// be\be_visitor_typecode/typecode_defn.cpp:295

static const CORBA::Long _oc_TAO_Default_ORT_ObjectReferenceTemplate[] =
{
    TAO_ENCAP_BYTE_ORDER, // byte order
  48,
  ACE_NTOHL (0x49444c3a), 
  ACE_NTOHL (0x54414f5f), 
  ACE_NTOHL (0x44656661), 
  ACE_NTOHL (0x756c745f), 
  ACE_NTOHL (0x4f52542f), 
  ACE_NTOHL (0x4f626a65), 
  ACE_NTOHL (0x63745265), 
  ACE_NTOHL (0x66657265), 
  ACE_NTOHL (0x6e636554), 
  ACE_NTOHL (0x656d706c), 
  ACE_NTOHL (0x6174653a), 
  ACE_NTOHL (0x312e3000),  // repository ID = IDL:TAO_Default_ORT/ObjectReferenceTemplate:1.0
    24,
  ACE_NTOHL (0x4f626a65), 
  ACE_NTOHL (0x63745265), 
  ACE_NTOHL (0x66657265), 
  ACE_NTOHL (0x6e636554), 
  ACE_NTOHL (0x656d706c), 
  ACE_NTOHL (0x61746500),  // name = ObjectReferenceTemplate
    0, // value modifier
  CORBA::tk_null, // no stateful base valuetype

0, // member count
  };

static CORBA::TypeCode _tc_TAO_tc_TAO_Default_ORT_ObjectReferenceTemplate (
    CORBA::tk_value,
    sizeof (_oc_TAO_Default_ORT_ObjectReferenceTemplate),
    (char *) &_oc_TAO_Default_ORT_ObjectReferenceTemplate,
    0,
    0
  );

namespace TAO_Default_ORT
{
  ::CORBA::TypeCode_ptr _tc_ObjectReferenceTemplate =
    &_tc_TAO_tc_TAO_Default_ORT_ObjectReferenceTemplate;
}

// TAO_IDL - Generated from
// be\be_visitor_valuetype/any_op_cs.cpp:57

template<>
CORBA::Boolean
TAO::Any_Impl_T<TAO_Default_ORT::ObjectReferenceTemplate>::to_value (
    CORBA::ValueBase *&_tao_elem
  ) const
{
  CORBA::add_ref (this->value_);
  _tao_elem = this->value_;
  return 1;
}
// Copying insertion.
void
operator<<= (
    CORBA::Any &_tao_any,
    TAO_Default_ORT::ObjectReferenceTemplate *_tao_elem
  )
{
  CORBA::add_ref (_tao_elem);
  _tao_any <<= &_tao_elem;
}

// Non-copying insertion.
void
operator<<= (
    CORBA::Any &_tao_any,
    TAO_Default_ORT::ObjectReferenceTemplate **_tao_elem
  )
{
  TAO::Any_Impl_T<TAO_Default_ORT::ObjectReferenceTemplate>::insert (
      _tao_any,
      TAO_Default_ORT::ObjectReferenceTemplate::_tao_any_destructor,
      TAO_Default_ORT::_tc_ObjectReferenceTemplate,
      *_tao_elem
    );
}

CORBA::Boolean
operator>>= (
    const CORBA::Any &_tao_any,
    TAO_Default_ORT::ObjectReferenceTemplate *&_tao_elem
  )
{
  return
    TAO::Any_Impl_T<TAO_Default_ORT::ObjectReferenceTemplate>::extract (
        _tao_any,
        TAO_Default_ORT::ObjectReferenceTemplate::_tao_any_destructor,
        TAO_Default_ORT::_tc_ObjectReferenceTemplate,
        _tao_elem
      );
}



#if defined (ACE_HAS_EXPLICIT_TEMPLATE_INSTANTIATION)

  template class
    TAO::Any_Impl_T<
        TAO_Default_ORT::ObjectReferenceTemplate
      >;

#elif defined (ACE_HAS_TEMPLATE_INSTANTIATION_PRAGMA)

# pragma instantiate \
    TAO::Any_Impl_T< \
        TAO_Default_ORT::ObjectReferenceTemplate \
      >

#endif /* !ACE_HAS_EXPLICIT_TEMPLATE_INSTANTIATION */ 
