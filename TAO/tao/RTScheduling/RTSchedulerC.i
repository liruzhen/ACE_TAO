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


// TAO_IDL - Generated from
// C:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_interface/interface_ci.cpp:68

#if !defined (_RTSCHEDULING_THREADACTION___CI_)
#define _RTSCHEDULING_THREADACTION___CI_

#endif /* end #if !defined */

// TAO_IDL - Generated from
// C:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_interface/interface_ci.cpp:68

#if !defined (_RTSCHEDULING_DISTRIBUTABLETHREAD___CI_)
#define _RTSCHEDULING_DISTRIBUTABLETHREAD___CI_

#endif /* end #if !defined */

#if !defined (_RTSCHEDULING_CURRENT_IDTYPE_CI_)
#define _RTSCHEDULING_CURRENT_IDTYPE_CI_

// TAO_IDL - Generated from 
// C:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_sequence/sequence_ci.cpp:226

// *************************************************************
// Inline operations for class RTScheduling::Current::IdType_var
// *************************************************************

ACE_INLINE
RTScheduling::Current::IdType_var::IdType_var (void)
  : ptr_ (0)
{}

ACE_INLINE
RTScheduling::Current::IdType_var::IdType_var (IdType *p)
  : ptr_ (p)
{}

ACE_INLINE
RTScheduling::Current::IdType_var::IdType_var (const ::RTScheduling::Current::IdType_var &p)
{
  if (p.ptr_)
    {
      ACE_NEW (this->ptr_, ::RTScheduling::Current::IdType (*p.ptr_));
    }
  else
    {
      this->ptr_ = 0;
    }
}

// Fixed-size base types only.
ACE_INLINE
RTScheduling::Current::IdType_var::IdType_var (const ::RTScheduling::Current::IdType &p)
{
  ACE_NEW (this->ptr_, ::RTScheduling::Current::IdType (p));
}

ACE_INLINE
RTScheduling::Current::IdType_var::~IdType_var (void)
{
  delete this->ptr_;
}

ACE_INLINE
RTScheduling::Current::IdType_var &
RTScheduling::Current::IdType_var::operator= (IdType *p)
{
  delete this->ptr_;
  this->ptr_ = p;
  return *this;
}

ACE_INLINE
::RTScheduling::Current::IdType_var &
RTScheduling::Current::IdType_var::operator= (const ::RTScheduling::Current::IdType_var &p)
{
  if (this != &p)
    {
      if (p.ptr_ == 0)
        {
          delete this->ptr_;
          this->ptr_ = 0;
        }
      else
        {
          IdType *deep_copy = 0;
          ACE_NEW_RETURN (
              deep_copy,
              IdType (*p.ptr_),
              *this
            );
          
          if (deep_copy != 0)
            {
              IdType *tmp = deep_copy;
              deep_copy = this->ptr_;
              this->ptr_ = tmp;
              delete deep_copy;
            }
        }
    }
  
  return *this;
}

// Fixed-size types only.
ACE_INLINE
::RTScheduling::Current::IdType_var &
RTScheduling::Current::IdType_var::operator= (const ::RTScheduling::Current::IdType &p)
{
  if (this->ptr_ != &p)
    {
      delete this->ptr_;
      ACE_NEW_RETURN (this->ptr_, ::RTScheduling::Current::IdType (p), *this);
    }
  
  return *this;
}

ACE_INLINE
const ::RTScheduling::Current::IdType *
RTScheduling::Current::IdType_var::operator-> (void) const
{
  return this->ptr_;
}

ACE_INLINE
::RTScheduling::Current::IdType *
RTScheduling::Current::IdType_var::operator-> (void)
{
  return this->ptr_;
}

ACE_INLINE
RTScheduling::Current::IdType_var::operator const ::RTScheduling::Current::IdType &() const // cast
{
  return *this->ptr_;
}

ACE_INLINE
RTScheduling::Current::IdType_var::operator ::RTScheduling::Current::IdType &() // cast 
{
  return *this->ptr_;
}

ACE_INLINE
RTScheduling::Current::IdType_var::operator ::RTScheduling::Current::IdType &() const // cast 
{
  return *this->ptr_;
}

ACE_INLINE
CORBA::Octet &
RTScheduling::Current::IdType_var::operator[] (CORBA::ULong index)
{
  return this->ptr_->operator[] (index);
}

ACE_INLINE
const CORBA::Octet &
RTScheduling::Current::IdType_var::operator[] (CORBA::ULong index) const
{
  return ACE_const_cast (const CORBA::Octet &, this->ptr_->operator[] (index));
}

ACE_INLINE
const ::RTScheduling::Current::IdType &
RTScheduling::Current::IdType_var::in (void) const
{
  return *this->ptr_;
}

ACE_INLINE
::RTScheduling::Current::IdType &
RTScheduling::Current::IdType_var::inout (void)
{
  return *this->ptr_;
}

ACE_INLINE
::RTScheduling::Current::IdType *&
RTScheduling::Current::IdType_var::out (void)
{
  delete this->ptr_;
  this->ptr_ = 0;
  return this->ptr_;
}

ACE_INLINE
::RTScheduling::Current::IdType *
RTScheduling::Current::IdType_var::_retn (void)
{
  ::RTScheduling::Current::IdType *tmp = this->ptr_;
  this->ptr_ = 0;
  return tmp;
}

ACE_INLINE
::RTScheduling::Current::IdType *
RTScheduling::Current::IdType_var::ptr (void) const
{
  return this->ptr_;
}

// TAO_IDL - Generated from 
// C:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_sequence/sequence_ci.cpp:567

// *************************************************************
// Inline operations for class RTScheduling::Current::IdType_out
// *************************************************************

ACE_INLINE
RTScheduling::Current::IdType_out::IdType_out (IdType *&p)
  : ptr_ (p)
{
  this->ptr_ = 0;
}

ACE_INLINE
RTScheduling::Current::IdType_out::IdType_out (IdType_var &p)
  : ptr_ (p.out ())
{
  delete this->ptr_;
  this->ptr_ = 0;
}

ACE_INLINE
RTScheduling::Current::IdType_out::IdType_out (const ::RTScheduling::Current::IdType_out &p)
  : ptr_ (ACE_const_cast (IdType_out&, p).ptr_)
{}

ACE_INLINE
::RTScheduling::Current::IdType_out &
RTScheduling::Current::IdType_out::operator= (const ::RTScheduling::Current::IdType_out &p)
{
  this->ptr_ = ACE_const_cast (IdType_out&, p).ptr_;
  return *this;
}

ACE_INLINE
::RTScheduling::Current::IdType_out &
RTScheduling::Current::IdType_out::operator= (IdType *p)
{
  this->ptr_ = p;
  return *this;
}

ACE_INLINE
RTScheduling::Current::IdType_out::operator ::RTScheduling::Current::IdType *&() // cast
{
  return this->ptr_;
}

ACE_INLINE
::RTScheduling::Current::IdType *&
RTScheduling::Current::IdType_out::ptr (void) // ptr
{
  return this->ptr_;
}

ACE_INLINE
::RTScheduling::Current::IdType *
RTScheduling::Current::IdType_out::operator-> (void)
{
  return this->ptr_;
}

ACE_INLINE
CORBA::Octet &
RTScheduling::Current::IdType_out::operator[] (CORBA::ULong index)
{
  return this->ptr_->operator[] (index);
}

#endif /* end #if !defined */

#if !defined (_RTSCHEDULING_CURRENT_NAMELIST_CI_)
#define _RTSCHEDULING_CURRENT_NAMELIST_CI_

// TAO_IDL - Generated from 
// C:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_sequence/sequence_ci.cpp:226

// *************************************************************
// Inline operations for class RTScheduling::Current::NameList_var
// *************************************************************

ACE_INLINE
RTScheduling::Current::NameList_var::NameList_var (void)
  : ptr_ (0)
{}

ACE_INLINE
RTScheduling::Current::NameList_var::NameList_var (NameList *p)
  : ptr_ (p)
{}

ACE_INLINE
RTScheduling::Current::NameList_var::NameList_var (const ::RTScheduling::Current::NameList_var &p)
{
  if (p.ptr_)
    {
      ACE_NEW (this->ptr_, ::RTScheduling::Current::NameList (*p.ptr_));
    }
  else
    {
      this->ptr_ = 0;
    }
}

ACE_INLINE
RTScheduling::Current::NameList_var::~NameList_var (void)
{
  delete this->ptr_;
}

ACE_INLINE
RTScheduling::Current::NameList_var &
RTScheduling::Current::NameList_var::operator= (NameList *p)
{
  delete this->ptr_;
  this->ptr_ = p;
  return *this;
}

ACE_INLINE
::RTScheduling::Current::NameList_var &
RTScheduling::Current::NameList_var::operator= (const ::RTScheduling::Current::NameList_var &p)
{
  if (this != &p)
    {
      if (p.ptr_ == 0)
        {
          delete this->ptr_;
          this->ptr_ = 0;
        }
      else
        {
          NameList *deep_copy = 0;
          ACE_NEW_RETURN (
              deep_copy,
              NameList (*p.ptr_),
              *this
            );
          
          if (deep_copy != 0)
            {
              NameList *tmp = deep_copy;
              deep_copy = this->ptr_;
              this->ptr_ = tmp;
              delete deep_copy;
            }
        }
    }
  
  return *this;
}

ACE_INLINE
const ::RTScheduling::Current::NameList *
RTScheduling::Current::NameList_var::operator-> (void) const
{
  return this->ptr_;
}

ACE_INLINE
::RTScheduling::Current::NameList *
RTScheduling::Current::NameList_var::operator-> (void)
{
  return this->ptr_;
}

ACE_INLINE
RTScheduling::Current::NameList_var::operator const ::RTScheduling::Current::NameList &() const // cast
{
  return *this->ptr_;
}

ACE_INLINE
RTScheduling::Current::NameList_var::operator ::RTScheduling::Current::NameList &() // cast 
{
  return *this->ptr_;
}

ACE_INLINE
RTScheduling::Current::NameList_var::operator ::RTScheduling::Current::NameList &() const // cast 
{
  return *this->ptr_;
}

// Variable-size types only.
ACE_INLINE
RTScheduling::Current::NameList_var::operator ::RTScheduling::Current::NameList *&() // cast 
{
  return this->ptr_;
}

ACE_INLINE
TAO_SeqElem_String_Manager
RTScheduling::Current::NameList_var::operator[] (CORBA::ULong index)
{
  return this->ptr_->operator[] (index);
}

ACE_INLINE
const ::RTScheduling::Current::NameList &
RTScheduling::Current::NameList_var::in (void) const
{
  return *this->ptr_;
}

ACE_INLINE
::RTScheduling::Current::NameList &
RTScheduling::Current::NameList_var::inout (void)
{
  return *this->ptr_;
}

ACE_INLINE
::RTScheduling::Current::NameList *&
RTScheduling::Current::NameList_var::out (void)
{
  delete this->ptr_;
  this->ptr_ = 0;
  return this->ptr_;
}

ACE_INLINE
::RTScheduling::Current::NameList *
RTScheduling::Current::NameList_var::_retn (void)
{
  ::RTScheduling::Current::NameList *tmp = this->ptr_;
  this->ptr_ = 0;
  return tmp;
}

ACE_INLINE
::RTScheduling::Current::NameList *
RTScheduling::Current::NameList_var::ptr (void) const
{
  return this->ptr_;
}

// TAO_IDL - Generated from 
// C:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_sequence/sequence_ci.cpp:567

// *************************************************************
// Inline operations for class RTScheduling::Current::NameList_out
// *************************************************************

ACE_INLINE
RTScheduling::Current::NameList_out::NameList_out (NameList *&p)
  : ptr_ (p)
{
  this->ptr_ = 0;
}

ACE_INLINE
RTScheduling::Current::NameList_out::NameList_out (NameList_var &p)
  : ptr_ (p.out ())
{
  delete this->ptr_;
  this->ptr_ = 0;
}

ACE_INLINE
RTScheduling::Current::NameList_out::NameList_out (const ::RTScheduling::Current::NameList_out &p)
  : ptr_ (ACE_const_cast (NameList_out&, p).ptr_)
{}

ACE_INLINE
::RTScheduling::Current::NameList_out &
RTScheduling::Current::NameList_out::operator= (const ::RTScheduling::Current::NameList_out &p)
{
  this->ptr_ = ACE_const_cast (NameList_out&, p).ptr_;
  return *this;
}

ACE_INLINE
::RTScheduling::Current::NameList_out &
RTScheduling::Current::NameList_out::operator= (NameList *p)
{
  this->ptr_ = p;
  return *this;
}

ACE_INLINE
RTScheduling::Current::NameList_out::operator ::RTScheduling::Current::NameList *&() // cast
{
  return this->ptr_;
}

ACE_INLINE
::RTScheduling::Current::NameList *&
RTScheduling::Current::NameList_out::ptr (void) // ptr
{
  return this->ptr_;
}

ACE_INLINE
::RTScheduling::Current::NameList *
RTScheduling::Current::NameList_out::operator-> (void)
{
  return this->ptr_;
}

ACE_INLINE
TAO_SeqElem_String_Manager
RTScheduling::Current::NameList_out::operator[] (CORBA::ULong index)
{
  return this->ptr_->operator[] (index);
}

#endif /* end #if !defined */

// TAO_IDL - Generated from
// C:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_interface/interface_ci.cpp:68

#if !defined (_RTSCHEDULING_CURRENT___CI_)
#define _RTSCHEDULING_CURRENT___CI_

#endif /* end #if !defined */

// TAO_IDL - Generated from
// C:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_interface/interface_ci.cpp:68

#if !defined (_RTSCHEDULING_RESOURCEMANAGER___CI_)
#define _RTSCHEDULING_RESOURCEMANAGER___CI_

#endif /* end #if !defined */

// TAO_IDL - Generated from
// C:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_interface/interface_ci.cpp:68

#if !defined (_RTSCHEDULING_SCHEDULER___CI_)
#define _RTSCHEDULING_SCHEDULER___CI_

#endif /* end #if !defined */

// TAO_IDL - Generated from
// C:\ACE_wrappers\TAO\TAO_IDL\be\be_visitor_exception/cdr_op_ci.cpp:71

ACE_INLINE
CORBA::Boolean operator<< (
    TAO_OutputCDR &strm,
    const CORBA::THREAD_CANCELLED &_tao_aggregate
  )
{
  // First marshal the repository ID.
  if (strm << _tao_aggregate._rep_id ())
    {
      return 1;
    }
  else
    {
      return 0;
    }
}

ACE_INLINE
CORBA::Boolean operator>> (
    TAO_InputCDR &,
    CORBA::THREAD_CANCELLED&
  )
{
  return 1;
}

