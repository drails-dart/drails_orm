part of drails_orm;

//TODO: when Issue 88 on Dart get resolved convert all those to enums.

/** 
 * How the EntityManager handle 2nd-level cache when read from
 * database(by find or queries).
 */
class AccessType extends Enum {
  static const AccessType FIELD = const AccessType("FIELD");
  static const AccessType PROPERTY = const AccessType("PROPERTY");

//  static const List<Enum> values = const [FIELD, PROPERTY];

  const AccessType(String name) : super(name);
}

/// Defines the types for primary key generation strategies.
class GenerationType extends Enum {
  static const GenerationType AUTO = const GenerationType("AUTO");
  static const GenerationType IDENTITY = const GenerationType("IDENTITY");
  static const GenerationType SEQUENCE = const GenerationType("SEQUENCE");
  static const GenerationType TABLE = const GenerationType("TABLE");

//  static const List<Enum> values = const [AUTO, IDENTITY, SEQUENCE, TABLE];

  const GenerationType(String name) : super(name);
}

/// Strategy when fetch referenced entities
class FetchType extends Enum {
  static const FetchType EAGER = const FetchType("EAGER");
  static const FetchType LAZY = const FetchType("LAZY");

//  static const List<Enum> values = const [EAGER, LAZY];

  const FetchType(String name) : super(name);
}

/// Used to ditinguish the type of the [DiscriminatorColumn].
class DiscriminatorType extends Enum {
  static const DiscriminatorType CHAR = const DiscriminatorType("CHAR");
  static const DiscriminatorType INTEGER = const DiscriminatorType("INTEGER");
  static const DiscriminatorType STRING = const DiscriminatorType("STRING");

//  static const List<Enum> values = const [CHAR, INTEGER, STRING];

  const DiscriminatorType(String name) : super(name);
}

/// Flush mode decides when to flush entities into db 
class FlushModeType extends Enum {
  /// (default) flushing entity to db at query execution. 
  static const FlushModeType AUTO = const FlushModeType("AUTO");
  /// flushing entity to db at transaction commit. 
  static const FlushModeType COMMIT = const FlushModeType("COMMIT");

//  static const List<Enum> values = const [AUTO, COMMIT];

  const FlushModeType(String name) : super(name);
}

/// Denfines mapping for enumerated types. 
class EnumType extends Enum {
  static const EnumType ORDINAL = const EnumType("ORDINAL");
  static const EnumType STRING = const EnumType("STRING");

//  static const List<Enum> values = const [ORDINAL, STRING];

  const EnumType(String name) : super(name);
}

/// Transaction mode when the EntityManager starts a transaction 
class TransactionModeType extends Enum {
  static const TransactionModeType READ_ONLY = const TransactionModeType("READ_ONLY");
  static const TransactionModeType READ_WRITE = const TransactionModeType("READ_WRITE");

  /// Returns a list of enum type, in the order of ordinal. 
//  static const List<Enum> values = const [READ_ONLY, READ_WRITE];


  const TransactionModeType(String name) : super(name);
}

/// Defines the cascadable operations that propagated to referred entity 
class CascadeType extends Enum {
  static const CascadeType ALL = const CascadeType("ALL");
  static const CascadeType DETACH = const CascadeType("DETACH");
  static const CascadeType MERGE = const CascadeType("MERGE");
  static const CascadeType PERSIST = const CascadeType("PERSIST");
  static const CascadeType REFRESH = const CascadeType("REFRESH");
  static const CascadeType REMOVE = const CascadeType("REMOVE");

//  static const List<Enum> values = const [ALL, DETACH, MERGE, PERSIST, REFRESH, REMOVE];

  const CascadeType(String name) : super(name);
}

/// LockMode of Entity 
class LockMode extends Enum {
  static const LockMode NONE = const LockMode("NONE");
  static const LockMode OPTIMISTIC = const LockMode("OPTIMISTIC");
  static const LockMode OPTIMISTIC_FORCE_INCREMENT = const LockMode("OPTIMISTIC_FORCE_INCREMENT");
  static const LockMode PESSIMISTIC_FORCE_INCREMENT = const LockMode("PESSIMISTIC_FORCE_INCREMENT");
  static const LockMode PESSIMISTIC_READ = const LockMode("PESSIMISTIC_READ");
  static const LockMode PESSIMISTIC_WRITE = const LockMode("PESSIMISTIC_WRITE");
  static const LockMode READ = const LockMode("READ");
  static const LockMode WRITE = const LockMode("WRITE");

//  static const List<Enum> values = const [NONE, OPTIMISTIC, OPTIMISTIC_FORCE_INCREMENT, PESSIMISTIC_FORCE_INCREMENT, PESSIMISTIC_READ, PESSIMISTIC_WRITE, READ, WRITE];

  const LockMode(String name) : super(name);
}

/** 
 * Specifies whether a transaction-scoped or extended persistence context is
 * used in PersistenceContext.
 */
class PersistenceContextType extends Enum {
  static const PersistenceContextType EXTENDED = const PersistenceContextType("EXTENDED");
  static const PersistenceContextType TRANSACTION = const PersistenceContextType("TRANSACTION");

//  static const List<Enum> values = const [EXTENDED, TRANSACTION];

  const PersistenceContextType(String name) : super(name);
}

/// Column type for Date class 
class TemporalType extends Enum {
  static const TemporalType DATE = const TemporalType("DATE");
  static const TemporalType TIME = const TemporalType("TIME");
  static const TemporalType TIMESTAMP = const TemporalType("TIMESTAMP");

//  static const List<Enum> values = const [DATE, TIME, TIMESTAMP];

  const TemporalType(String name) : super(name);
}


/// Defines the types of entity inheritance strategies. 
class InheritanceType extends Enum {
  static const InheritanceType JOINED = const InheritanceType("JOINED");
  static const InheritanceType SINGLE_TABLE = const InheritanceType("SINGLE_TABLE");
  static const InheritanceType TABLE_PER_CLASS = const InheritanceType("TABLE_PER_CLASS");

//  static const List<Enum> values = const [JOINED, SINGLE_TABLE, TABLE_PER_CLASS];

  const InheritanceType(String name) : super(name);
}

class TransactionType extends Enum {
  /// JTA entity manager will be created 
  static const TransactionType JTA = const TransactionType("JTA");

  /// Resource-local entity manager will be created 
  static const TransactionType RESOURCE_LOCAL = const TransactionType("RESOURCE_LOCAL");

//  /// Returns a list of enum type, in the order of ordinal. 
//  static const List<TransactionType> values = const [JTA, RESOURCE_LOCAL];

  const TransactionType(String name)
      : super(name);
}


/** 
 * How the EntityManager handle 2nd-level cache when read from
 * database(by find or queries).
 */
class CacheRetrieveMode extends Enum {
  static const CacheRetrieveMode BYPASS = const CacheRetrieveMode("BYPASS");
  static const CacheRetrieveMode USE = const CacheRetrieveMode("USE");

//  static const List<Enum> values = const [BYPASS, USE];

  const CacheRetrieveMode(String name) : super(name);
}

/// How the EntityManager handle 2nd-level cache when store into database. 
class CacheStoreMode extends Enum {
  static const CacheStoreMode BYPASS = const CacheStoreMode("BYPASS");
  static const CacheStoreMode REFRESH = const CacheStoreMode("REFRESH");
  static const CacheStoreMode USE = const CacheStoreMode("USE");

//  static const List<Enum> values = const [BYPASS, REFRESH, USE];

  const CacheStoreMode(String name) : super(name);
}

/// How the EntityManager handle 2nd-level cache for the persistence unit. 
class SharedCacheMode extends Enum {
  static const SharedCacheMode ALL = const SharedCacheMode("ALL");
  static const SharedCacheMode DISABLE_SELECTIVE = const SharedCacheMode("DISABLE_SELECTIVE");
  static const SharedCacheMode ENABLE_SELECTIVE = const SharedCacheMode("ENABLE_SELECTIVE");
  static const SharedCacheMode NONE = const SharedCacheMode("NONE");
  static const SharedCacheMode UNSPECIFIED = const SharedCacheMode("UNSPECIFIED");

//  static const List<Enum> values = const [ALL, DISABLE_SELECTIVE, ENABLE_SELECTIVE, NONE, UNSPECIFIED];

  const SharedCacheMode(String name) : super(name);
}

/// How the EntityManager handle 2nd-level cache for the persistence unit. 
class ValidationMode extends Enum {
  static const ValidationMode AUTO = const ValidationMode("AUTO");
  static const ValidationMode CALLBACK = const ValidationMode("CALLBACK");
  static const ValidationMode NONE = const ValidationMode("NONE");

//  static const List<Enum> values = const [AUTO, CALLBACK, NONE];

  const ValidationMode(String name) : super(name);
}

/// State of the entity managed by [EntityManager]. 
class EntityState extends Enum {
  /** Enity has NO persistent identity and NOT associated with persistence context;
   *  i.e. pure dart object.
   */
  static const EntityState NEW = const EntityState("NEW");

  /// Entity with persistent identity and associated with persistence context 
  static const EntityState MANAGED = const EntityState("MANAGED");

  /// Entity with persistent identity and NOT associated with persistence context 
  static const EntityState DETACHED = const EntityState("DETACHED");

  /** 
   * Entity with persistent identity and associated with persistence context and
   * scheduled for removal from the data store.
   */
  static const EntityState REMOVED = const EntityState("REMOVED");

//  static const List<Enum> values = const [NEW, MANAGED, DETACHED, REMOVED];

  const EntityState(String name) : super(name);
}

/** Collection type. */
class CollectionType extends Enum {
  static const CollectionType COLLECTION = const CollectionType("COLLECTION");
  static const CollectionType LIST = const CollectionType("LIST");
  static const CollectionType MAP = const CollectionType("MAP");
  static const CollectionType SET = const CollectionType("SET");
  static const CollectionType QUEUE = const CollectionType("QUEUE");

  const CollectionType(String name) : super(name);
}

/** Persistence type. */
class PersistentAttributeType extends Enum {
  static const PersistentAttributeType BASIC = const PersistentAttributeType("BASIC");
  static const PersistentAttributeType ELEMENT_COLLECTION = const PersistentAttributeType("ELEMENT_COLLECTION");
  static const PersistentAttributeType EMBEDDED = const PersistentAttributeType("EMBEDDED");
  static const PersistentAttributeType MANY_TO_MANY = const PersistentAttributeType("MANY_TO_MANY");
  static const PersistentAttributeType MANY_TO_ONE = const PersistentAttributeType("MANY_TO_ONE");
  static const PersistentAttributeType ONE_TO_MANY = const PersistentAttributeType("ONE_TO_MANY");
  static const PersistentAttributeType ONE_TO_ONE = const PersistentAttributeType("ONE_TO_ONE");

  const PersistentAttributeType(String name) : super(name);
}

