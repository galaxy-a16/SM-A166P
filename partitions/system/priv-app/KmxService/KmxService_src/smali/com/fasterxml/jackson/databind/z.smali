.class public abstract Lcom/fasterxml/jackson/databind/z;
.super Lcom/fasterxml/jackson/databind/e;
.source "SourceFile"


# static fields
.field protected static final CACHE_UNKNOWN_MAPPINGS:Z = false

.field public static final DEFAULT_NULL_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation
.end field

.field protected static final DEFAULT_UNKNOWN_SERIALIZER:Lcom/fasterxml/jackson/databind/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation
.end field


# instance fields
.field protected transient _attributes:Lcom/fasterxml/jackson/databind/cfg/e;

.field protected final _config:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field protected _dateFormat:Ljava/text/DateFormat;

.field protected _keySerializer:Lcom/fasterxml/jackson/databind/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation
.end field

.field protected final _knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

.field protected _nullKeySerializer:Lcom/fasterxml/jackson/databind/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation
.end field

.field protected _nullValueSerializer:Lcom/fasterxml/jackson/databind/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation
.end field

.field protected final _serializationView:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

.field protected final _serializerFactory:Lcom/fasterxml/jackson/databind/ser/m;

.field protected final _stdNullValueSerializer:Z

.field protected _unknownTypeSerializer:Lcom/fasterxml/jackson/databind/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;

    const-string v1, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/z;->DEFAULT_NULL_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/o;

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/z;->DEFAULT_UNKNOWN_SERIALIZER:Lcom/fasterxml/jackson/databind/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/e;-><init>()V

    sget-object v0, Lcom/fasterxml/jackson/databind/z;->DEFAULT_UNKNOWN_SERIALIZER:Lcom/fasterxml/jackson/databind/o;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_unknownTypeSerializer:Lcom/fasterxml/jackson/databind/o;

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/o;

    sget-object v0, Lcom/fasterxml/jackson/databind/z;->DEFAULT_NULL_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/o;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_nullKeySerializer:Lcom/fasterxml/jackson/databind/o;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/m;

    new-instance v1, Lcom/fasterxml/jackson/databind/ser/l;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/ser/l;-><init>()V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializationView:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_attributes:Lcom/fasterxml/jackson/databind/cfg/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/z;->_stdNullValueSerializer:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/z;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/e;-><init>()V

    sget-object v0, Lcom/fasterxml/jackson/databind/z;->DEFAULT_UNKNOWN_SERIALIZER:Lcom/fasterxml/jackson/databind/o;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_unknownTypeSerializer:Lcom/fasterxml/jackson/databind/o;

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/o;

    sget-object v0, Lcom/fasterxml/jackson/databind/z;->DEFAULT_NULL_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/o;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_nullKeySerializer:Lcom/fasterxml/jackson/databind/o;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializationView:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/m;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/l;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/l;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/z;->_unknownTypeSerializer:Lcom/fasterxml/jackson/databind/o;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_unknownTypeSerializer:Lcom/fasterxml/jackson/databind/o;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/z;->_keySerializer:Lcom/fasterxml/jackson/databind/o;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_keySerializer:Lcom/fasterxml/jackson/databind/o;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/z;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/o;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/o;

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/z;->_nullKeySerializer:Lcom/fasterxml/jackson/databind/o;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_nullKeySerializer:Lcom/fasterxml/jackson/databind/o;

    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/z;->_stdNullValueSerializer:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/z;->_stdNullValueSerializer:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/m;)V
    .locals 2

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/e;-><init>()V

    sget-object v0, Lcom/fasterxml/jackson/databind/z;->DEFAULT_UNKNOWN_SERIALIZER:Lcom/fasterxml/jackson/databind/o;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_unknownTypeSerializer:Lcom/fasterxml/jackson/databind/o;

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/o;

    sget-object v0, Lcom/fasterxml/jackson/databind/z;->DEFAULT_NULL_KEY_SERIALIZER:Lcom/fasterxml/jackson/databind/o;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_nullKeySerializer:Lcom/fasterxml/jackson/databind/o;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/z;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/m;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object p3, p1, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/z;->_unknownTypeSerializer:Lcom/fasterxml/jackson/databind/o;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/z;->_unknownTypeSerializer:Lcom/fasterxml/jackson/databind/o;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/z;->_keySerializer:Lcom/fasterxml/jackson/databind/o;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/z;->_keySerializer:Lcom/fasterxml/jackson/databind/o;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/z;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/o;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/z;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/o;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/z;->_nullKeySerializer:Lcom/fasterxml/jackson/databind/o;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/z;->_nullKeySerializer:Lcom/fasterxml/jackson/databind/o;

    if-ne v1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/z;->_stdNullValueSerializer:Z

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getActiveView()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/z;->_serializationView:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getAttributes()Lcom/fasterxml/jackson/databind/cfg/e;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/z;->_attributes:Lcom/fasterxml/jackson/databind/cfg/e;

    .line 3
    iget-object p1, p3, Lcom/fasterxml/jackson/databind/ser/l;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/ser/impl/k;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    monitor-enter p3

    :try_start_0
    iget-object p1, p3, Lcom/fasterxml/jackson/databind/ser/l;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/ser/impl/k;

    if-nez p1, :cond_2

    iget-object p1, p3, Lcom/fasterxml/jackson/databind/ser/l;->a:Lcom/fasterxml/jackson/databind/util/LRUMap;

    .line 6
    new-instance p2, Lcom/fasterxml/jackson/databind/ser/impl/k;

    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/ser/impl/k;-><init>(Lcom/fasterxml/jackson/databind/util/LRUMap;)V

    .line 7
    iget-object p1, p3, Lcom/fasterxml/jackson/databind/ser/l;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p2

    :cond_2
    monitor-exit p3

    .line 8
    :goto_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/z;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

    return-void

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit p3

    throw p0
.end method


# virtual methods
.method public _createAndCacheUntypedSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->_createUntypedSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4}, Lcom/fasterxml/jackson/databind/z;->reportMappingProblem(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    .line 1
    monitor-enter v3

    .line 2
    :try_start_1
    iget-object v4, v3, Lcom/fasterxml/jackson/databind/ser/l;->a:Lcom/fasterxml/jackson/databind/util/LRUMap;

    new-instance v5, Lcom/fasterxml/jackson/databind/util/b0;

    invoke-direct {v5, p1, v0}, Lcom/fasterxml/jackson/databind/util/b0;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V

    invoke-virtual {v4, v5, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, v3, Lcom/fasterxml/jackson/databind/ser/l;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    instance-of p1, v2, Lcom/fasterxml/jackson/databind/ser/k;

    if-eqz p1, :cond_1

    move-object p1, v2

    check-cast p1, Lcom/fasterxml/jackson/databind/ser/k;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/databind/ser/k;->resolve(Lcom/fasterxml/jackson/databind/z;)V

    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-object v2
.end method

.method public _createAndCacheUntypedSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/z;->_createUntypedSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/databind/z;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    .line 3
    monitor-enter v3

    .line 4
    :try_start_1
    iget-object v4, v3, Lcom/fasterxml/jackson/databind/ser/l;->a:Lcom/fasterxml/jackson/databind/util/LRUMap;

    new-instance v5, Lcom/fasterxml/jackson/databind/util/b0;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/databind/util/b0;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v4, v5, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v4, v3, Lcom/fasterxml/jackson/databind/ser/l;->a:Lcom/fasterxml/jackson/databind/util/LRUMap;

    new-instance v5, Lcom/fasterxml/jackson/databind/util/b0;

    invoke-direct {v5, v0, v6}, Lcom/fasterxml/jackson/databind/util/b0;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V

    invoke-virtual {v4, v5, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object p1, v3, Lcom/fasterxml/jackson/databind/ser/l;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    instance-of p1, v2, Lcom/fasterxml/jackson/databind/ser/k;

    if-eqz p1, :cond_2

    move-object p1, v2

    check-cast p1, Lcom/fasterxml/jackson/databind/ser/k;

    invoke-interface {p1, p0}, Lcom/fasterxml/jackson/databind/ser/k;->resolve(Lcom/fasterxml/jackson/databind/z;)V

    :cond_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-object v2
.end method

.method public _createUntypedSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/m;

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/m;->createSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public final _dateFormat()Ljava/text/DateFormat;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_dateFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public _findExplicitUntypedSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/k;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/l;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->_createAndCacheUntypedSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/z;->isUnknownTypeSerializer(Lcom/fasterxml/jackson/databind/o;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public _handleContextualResolvable(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/o;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    instance-of v0, p1, Lcom/fasterxml/jackson/databind/ser/k;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/k;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/databind/ser/k;->resolve(Lcom/fasterxml/jackson/databind/z;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/z;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public _handleResolvable(Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/o;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    instance-of v0, p1, Lcom/fasterxml/jackson/databind/ser/k;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/k;

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/databind/ser/k;->resolve(Lcom/fasterxml/jackson/databind/z;)V

    :cond_0
    return-object p1
.end method

.method public _reportIncompatibleRootType(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/h;->G(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Incompatible types: declared root type (%s) vs %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/z;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public final bufferForValueConversion()Lcom/fasterxml/jackson/databind/util/z;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/z;->bufferForValueConversion(Lcom/fasterxml/jackson/core/j;)Lcom/fasterxml/jackson/databind/util/z;

    move-result-object p0

    return-object p0
.end method

.method public bufferForValueConversion(Lcom/fasterxml/jackson/core/j;)Lcom/fasterxml/jackson/databind/util/z;
    .locals 0

    .line 2
    new-instance p0, Lcom/fasterxml/jackson/databind/util/z;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/util/z;-><init>(Lcom/fasterxml/jackson/core/j;)V

    return-object p0
.end method

.method public final canOverrideAccessModifiers()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p0

    return p0
.end method

.method public constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public defaultSerializeDateKey(JLcom/fasterxml/jackson/core/f;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/z;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/z;->_dateFormat()Ljava/text/DateFormat;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/core/f;->z0(Ljava/lang/String;)V

    return-void
.end method

.method public defaultSerializeDateKey(Ljava/util/Date;Lcom/fasterxml/jackson/core/f;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATE_KEYS_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/z;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/z;->_dateFormat()Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/f;->z0(Ljava/lang/String;)V

    return-void
.end method

.method public final defaultSerializeDateValue(JLcom/fasterxml/jackson/core/f;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/z;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/core/f;->E0(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/z;->_dateFormat()Ljava/text/DateFormat;

    move-result-object p0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/fasterxml/jackson/core/f;->Y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final defaultSerializeDateValue(Ljava/util/Date;Lcom/fasterxml/jackson/core/f;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/z;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lcom/fasterxml/jackson/core/f;->E0(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/z;->_dateFormat()Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/core/f;->Y0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final defaultSerializeField(Ljava/lang/String;Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;)V
    .locals 2

    invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/core/f;->z0(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/fasterxml/jackson/databind/z;->_stdNullValueSerializer:Z

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/f;->A0()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/z;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/o;

    invoke-virtual {p2, p1, p3, p0}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/fasterxml/jackson/databind/z;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p0}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    :goto_0
    return-void
.end method

.method public final defaultSerializeNull(Lcom/fasterxml/jackson/core/f;)V
    .locals 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/z;->_stdNullValueSerializer:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->A0()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p0}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    :goto_0
    return-void
.end method

.method public final defaultSerializeValue(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/z;->_stdNullValueSerializer:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/f;->A0()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/z;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/o;

    invoke-virtual {p1, v0, p2, p0}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lcom/fasterxml/jackson/databind/z;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    :goto_0
    return-void
.end method

.method public findContentValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/k;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/l;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->_createAndCacheUntypedSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/z;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public findContentValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/k;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/l;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/l;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->_createAndCacheUntypedSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/z;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public findKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/m;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/z;->_keySerializer:Lcom/fasterxml/jackson/databind/o;

    invoke-virtual {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/m;->createKeySerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/z;->_handleContextualResolvable(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public findKeySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/z;->findKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_nullKeySerializer:Lcom/fasterxml/jackson/databind/o;

    return-object p0
.end method

.method public findNullValueSerializer(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/o;

    return-object p0
.end method

.method public abstract findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/o;
.end method

.method public findPrimaryPropertySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/k;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/l;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->_createAndCacheUntypedSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/z;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public findPrimaryPropertySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/k;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/l;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/l;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->_createAndCacheUntypedSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/z;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public findTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/m;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/m;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object p0

    return-object p0
.end method

.method public findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 2
    iget v2, v0, Lcom/fasterxml/jackson/databind/ser/impl/k;->b:I

    and-int/2addr v1, v2

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/k;->a:[Landroidx/emoji2/text/t;

    aget-object v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    iget-boolean v3, v0, Landroidx/emoji2/text/t;->a:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroidx/emoji2/text/t;->e:Ljava/lang/Object;

    check-cast v3, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    iget-object v0, v0, Landroidx/emoji2/text/t;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/t;

    if-eqz v0, :cond_4

    .line 5
    iget-boolean v3, v0, Landroidx/emoji2/text/t;->a:Z

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroidx/emoji2/text/t;->e:Ljava/lang/Object;

    check-cast v3, Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    .line 6
    :goto_2
    iget-object v0, v0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/o;

    goto :goto_4

    :cond_4
    :goto_3
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_5

    return-object v0

    .line 7
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/l;->a:Lcom/fasterxml/jackson/databind/util/LRUMap;

    new-instance v4, Lcom/fasterxml/jackson/databind/util/b0;

    invoke-direct {v4, p1, v1}, Lcom/fasterxml/jackson/databind/util/b0;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/o;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_6

    return-object v3

    .line 10
    :cond_6
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/z;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/z;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/m;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v3, v4, p1}, Lcom/fasterxml/jackson/databind/ser/m;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, p3}, Lcom/fasterxml/jackson/databind/jsontype/k;->a(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object p3

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/impl/n;

    invoke-direct {v3, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/n;-><init>(Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)V

    move-object v0, v3

    :cond_7
    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    .line 11
    monitor-enter p0

    .line 12
    :try_start_1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/l;->a:Lcom/fasterxml/jackson/databind/util/LRUMap;

    new-instance p3, Lcom/fasterxml/jackson/databind/util/b0;

    invoke-direct {p3, p1, v1}, Lcom/fasterxml/jackson/databind/util/b0;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Z)V

    invoke-virtual {p2, p3, v0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/l;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_8
    monitor-exit p0

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    :goto_5
    return-object v0

    :catchall_1
    move-exception p0

    .line 13
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 15
    iget v3, v0, Lcom/fasterxml/jackson/databind/ser/impl/k;->b:I

    and-int/2addr v1, v3

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/impl/k;->a:[Landroidx/emoji2/text/t;

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_3

    .line 16
    :cond_0
    iget-object v3, v0, Landroidx/emoji2/text/t;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Class;

    const/4 v4, 0x0

    if-ne v3, p1, :cond_1

    iget-boolean v3, v0, Landroidx/emoji2/text/t;->a:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    iget-object v0, v0, Landroidx/emoji2/text/t;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/t;

    if-eqz v0, :cond_4

    .line 18
    iget-object v3, v0, Landroidx/emoji2/text/t;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Class;

    if-ne v3, p1, :cond_3

    iget-boolean v3, v0, Landroidx/emoji2/text/t;->a:Z

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    .line 19
    :goto_2
    iget-object v0, v0, Landroidx/emoji2/text/t;->b:Ljava/lang/Object;

    check-cast v0, Lcom/fasterxml/jackson/databind/o;

    goto :goto_4

    :cond_4
    :goto_3
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_5

    return-object v0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/l;->a:Lcom/fasterxml/jackson/databind/util/LRUMap;

    new-instance v4, Lcom/fasterxml/jackson/databind/util/b0;

    invoke-direct {v4, p1, v2}, Lcom/fasterxml/jackson/databind/util/b0;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/o;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_6

    return-object v3

    .line 23
    :cond_6
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/z;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/z;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/m;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v4, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/fasterxml/jackson/databind/ser/m;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, p3}, Lcom/fasterxml/jackson/databind/jsontype/k;->a(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object p3

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/impl/n;

    invoke-direct {v3, p3, v0}, Lcom/fasterxml/jackson/databind/ser/impl/n;-><init>(Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)V

    move-object v0, v3

    :cond_7
    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    .line 24
    monitor-enter p0

    .line 25
    :try_start_1
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/l;->a:Lcom/fasterxml/jackson/databind/util/LRUMap;

    new-instance p3, Lcom/fasterxml/jackson/databind/util/b0;

    invoke-direct {p3, p1, v2}, Lcom/fasterxml/jackson/databind/util/b0;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {p2, p3, v0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/l;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_8
    monitor-exit p0

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_9
    :goto_5
    return-object v0

    :catchall_1
    move-exception p0

    .line 26
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/k;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/l;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->_createAndCacheUntypedSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .line 2
    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Null passed for `valueType` of `findValueSerializer()`"

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/z;->reportMappingProblem(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/k;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/l;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->_createAndCacheUntypedSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/z;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public findValueSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/k;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/l;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/l;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->_createAndCacheUntypedSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_knownSerializers:Lcom/fasterxml/jackson/databind/ser/impl/k;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/k;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/l;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_serializerCache:Lcom/fasterxml/jackson/databind/ser/l;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/l;->a(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->_createAndCacheUntypedSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/z;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/z;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public final getActiveView()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_serializationView:Ljava/lang/Class;

    return-object p0
.end method

.method public final getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    return-object p0
.end method

.method public getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_attributes:Lcom/fasterxml/jackson/databind/cfg/e;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/e;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object p0
.end method

.method public bridge synthetic getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultNullKeySerializer()Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_nullKeySerializer:Lcom/fasterxml/jackson/databind/o;

    return-object p0
.end method

.method public getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/o;

    return-object p0
.end method

.method public final getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Value;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultPropertyInclusion(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyInclusion(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p0

    return-object p0
.end method

.method public final getFilterProvider()Lcom/fasterxml/jackson/databind/ser/g;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getFilterProvider()Lcom/fasterxml/jackson/databind/ser/g;

    move-result-object p0

    return-object p0
.end method

.method public abstract getGenerator()Lcom/fasterxml/jackson/core/f;
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public final getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object p0

    return-object p0
.end method

.method public getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_unknownTypeSerializer:Lcom/fasterxml/jackson/databind/o;

    return-object p0

    :cond_0
    new-instance p0, Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/o;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/fasterxml/jackson/databind/ser/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/fasterxml/jackson/databind/ser/f;

    invoke-interface {p1, p0, p2}, Lcom/fasterxml/jackson/databind/ser/f;->createContextual(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/o;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/fasterxml/jackson/databind/ser/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/fasterxml/jackson/databind/ser/f;

    invoke-interface {p1, p0, p2}, Lcom/fasterxml/jackson/databind/ser/f;->createContextual(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final hasSerializationFeatures(I)Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->hasSerializationFeatures(I)Z

    move-result p0

    return p0
.end method

.method public abstract includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/Class;)Ljava/lang/Object;
.end method

.method public abstract includeFilterSuppressNulls(Ljava/lang/Object;)Z
.end method

.method public invalidTypeIdException(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/h;->q(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Could not resolve type id \'%s\' as a subtype of %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/fasterxml/jackson/databind/e;->_colonConcat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;->from(Lcom/fasterxml/jackson/core/g;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/exc/InvalidTypeIdException;

    move-result-object p0

    return-object p0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p0

    return p0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p0

    return p0
.end method

.method public final isEnabled(Lcom/fasterxml/jackson/databind/cfg/f;)Z
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/z;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/cfg/f;)Z

    move-result p0

    return p0
.end method

.method public isUnknownTypeSerializer(Lcom/fasterxml/jackson/databind/o;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/o;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_unknownTypeSerializer:Lcom/fasterxml/jackson/databind/o;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/z;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Lcom/fasterxml/jackson/databind/ser/impl/UnknownSerializer;

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public varargs mappingException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/z;->getGenerator()Lcom/fasterxml/jackson/core/f;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/e;->_format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/f;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p0

    return-object p0
.end method

.method public varargs mappingException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/z;->getGenerator()Lcom/fasterxml/jackson/core/f;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/e;->_format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/f;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p0

    return-object p0
.end method

.method public reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/z;->getGenerator()Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/f;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p0

    throw p0
.end method

.method public reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/z;->getGenerator()Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/f;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->withCause(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p0

    throw p0
.end method

.method public reportBadDefinition(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/z;->getGenerator()Lcom/fasterxml/jackson/core/f;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/e;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p0

    invoke-static {v0, p2, p0}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/f;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->withCause(Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p0

    throw p0
.end method

.method public varargs reportBadPropertyDefinition(Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/c;",
            "Lcom/fasterxml/jackson/databind/introspect/q;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p3, p4}, Lcom/fasterxml/jackson/databind/e;->_format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "N/A"

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/util/q;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/e;->_quotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/c;->c()Ljava/lang/Class;

    move-result-object p4

    invoke-static {p4}, Lcom/fasterxml/jackson/databind/util/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p4

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p4, v1, v0

    const/4 p4, 0x2

    aput-object p3, v1, p4

    const-string p3, "Invalid definition for property %s (of type %s): %s"

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/z;->getGenerator()Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    invoke-static {p0, p3, p1, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/f;Ljava/lang/String;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p0

    throw p0
.end method

.method public varargs reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/databind/c;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/c;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "N/A"

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/e;->_format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    const-string p2, "Invalid type definition for type %s: %s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/z;->getGenerator()Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    const/4 p3, 0x0

    invoke-static {p0, p2, p1, p3}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/f;Ljava/lang/String;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object p0

    throw p0
.end method

.method public varargs reportMappingProblem(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/z;->mappingException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p0

    throw p0
.end method

.method public varargs reportMappingProblem(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/e;->_format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/z;->getGenerator()Lcom/fasterxml/jackson/core/f;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/f;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p0

    throw p0
.end method

.method public abstract serializerInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/o;
.end method

.method public bridge synthetic setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/z;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/z;

    move-result-object p0

    return-object p0
.end method

.method public setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/z;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/z;->_attributes:Lcom/fasterxml/jackson/databind/cfg/e;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/e;->withPerCallAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/e;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/z;->_attributes:Lcom/fasterxml/jackson/databind/cfg/e;

    return-object p0
.end method

.method public setDefaultKeySerializer(Lcom/fasterxml/jackson/databind/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/o;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/z;->_keySerializer:Lcom/fasterxml/jackson/databind/o;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass null JsonSerializer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNullKeySerializer(Lcom/fasterxml/jackson/databind/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/o;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/z;->_nullKeySerializer:Lcom/fasterxml/jackson/databind/o;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass null JsonSerializer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setNullValueSerializer(Lcom/fasterxml/jackson/databind/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/o;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/z;->_nullValueSerializer:Lcom/fasterxml/jackson/databind/o;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass null JsonSerializer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
