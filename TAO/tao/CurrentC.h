/* -*- C++ -*- */
// $Id$

// ============================================================================
//
// = LIBRARY
//    TAO
//
// = FILENAME
//    CurrentC.h
//
// = AUTHOR
//
// ******  Code generated by the The ACE ORB (TAO) IDL Compiler *******
// TAO ORB and the TAO IDL Compiler have been developed by Washington
// University Computer Science's Distributed Object Computing Group.
//
// Information on TAO is available at
//                 http://www.cs.wustl.edu/~schmidt/TAO.html
//
//
// Modified by Aniruddha Gokhale.
//
// ============================================================================

#ifndef TAO_IDL_CURRENTC_H
#define TAO_IDL_CURRENTC_H

#ifndef TAO_EXPORT_MACRO
#define TAO_EXPORT_MACRO
#endif

#include "tao/Object.h"

#if defined(_MSC_VER)
#pragma warning(disable:4250)
#endif /* _MSC_VER */

#if !defined (_CORBA_CURRENT___PTR_CH_)
#define _CORBA_CURRENT___PTR_CH_

class CORBA_Current;
typedef CORBA_Current *CORBA_Current_ptr;

#endif /* end #if !defined */


#if !defined (_CORBA_CURRENT___VAR_CH_)
#define _CORBA_CURRENT___VAR_CH_

class  CORBA_Current_var
{
public:
  CORBA_Current_var (void); // default constructor
  CORBA_Current_var (CORBA_Current_ptr);
  CORBA_Current_var (const CORBA_Current_var &); // copy constructor
  ~CORBA_Current_var (void); // destructor

  CORBA_Current_var &operator= (CORBA_Current_ptr);
  CORBA_Current_var &operator= (const CORBA_Current_var &);
  CORBA_Current_ptr operator-> (void) const;

  operator const CORBA_Current_ptr &() const;
  operator CORBA_Current_ptr &();
  // in, inout, out, _retn
  CORBA_Current_ptr in (void) const;
  CORBA_Current_ptr &inout (void);
  CORBA_Current_ptr &out (void);
  CORBA_Current_ptr _retn (void);
  CORBA_Current_ptr ptr (void) const;

private:
  CORBA_Current_ptr ptr_;
};


#endif /* end #if !defined */


#if !defined (_CORBA_CURRENT___OUT_CH_)
#define _CORBA_CURRENT___OUT_CH_

class  CORBA_Current_out
{
public:
  CORBA_Current_out (CORBA_Current_ptr &);
  CORBA_Current_out (CORBA_Current_var &);
  CORBA_Current_out (CORBA_Current_out &);
  CORBA_Current_out &operator= (CORBA_Current_out &);
  CORBA_Current_out &operator= (const CORBA_Current_var &);
  CORBA_Current_out &operator= (CORBA_Current_ptr);
  operator CORBA_Current_ptr &();
  CORBA_Current_ptr &ptr (void);
  CORBA_Current_ptr operator-> (void);

private:
  CORBA_Current_ptr &ptr_;
};


#endif /* end #if !defined */


#if !defined (_CORBA_CURRENT_CH_)
#define _CORBA_CURRENT_CH_

class  CORBA_Current : public virtual ACE_CORBA_1 (Object)
{
 public:
  #if !defined(__GNUC__) || __GNUC__ > 2 || __GNUC_MINOR__ >= 8
    typedef CORBA_Current_ptr _ptr_type;
    typedef CORBA_Current_var _var_type;
  #endif /* __GNUC__ */

  // the static operations
  static CORBA_Current_ptr _duplicate (CORBA_Current_ptr obj);
  static CORBA_Current_ptr _narrow (CORBA::Object_ptr obj,
                                    CORBA_Environment &TAO_IN_ENV =
                                        TAO_default_environment ());
  static CORBA_Current_ptr _nil (void);

  virtual CORBA::Boolean _is_a (const CORBA::Char *type_id,
                                CORBA_Environment &TAO_IN_ENV =
                                    TAO_default_environment ()
                                );
  virtual const char* _interface_repository_id (void) const;
 protected:
  CORBA_Current (void); // default constructor
  CORBA_Current (TAO_Stub *objref,
           TAO_ServantBase *_tao_servant = 0,
           CORBA::Boolean _tao_collocated = 0
           );
  virtual ~CORBA_Current (void);
 private:
  CORBA_Current (const CORBA_Current &);
  void operator= (const CORBA_Current &);
};


#endif /* end #if !defined */

// Any operators for interface CORBA_Current
void operator<<= (CORBA::Any &, CORBA_Current_ptr);
CORBA::Boolean operator>>= (const CORBA::Any &, CORBA_Current *&);

#if defined (__ACE_INLINE__)
#include "CurrentC.i"
#endif /* defined INLINE */

#if defined(_MSC_VER)
#pragma warning(default:4250)
#endif /* _MSC_VER */

#endif /* TAO_IDL_CURRENTC_H */
