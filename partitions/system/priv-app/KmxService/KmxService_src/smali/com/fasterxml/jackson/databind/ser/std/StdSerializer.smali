.class public abstract Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.super Lcom/fasterxml/jackson/databind/o;
.source "SourceFile"

# interfaces
.implements Lk2/c;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/o;",
        "Lk2/c;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final KEY_CONTENT_CONVERTER_LOCK:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _handledType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->KEY_CONTENT_CONVERTER_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/o;-><init>()V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
            "*>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/o;-><init>()V

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/o;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/o;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    return-void
.end method

.method public static final _neitherNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final _nonEmpty(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .line 1
    sget-object p0, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    return-object p0
.end method

.method public createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    if-nez p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    const-string p2, "required"

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_0
    return-object p0
.end method

.method public findAnnotatedContentSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/d;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p2

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0, p2}, Lcom/fasterxml/jackson/databind/z;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public findContextualConvertingSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/d;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->KEY_CONTENT_CONVERTER_LOCK:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/z;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object p3

    :cond_0
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/z;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/z;

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->findConvertingContentSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0, p2}, Lcom/fasterxml/jackson/databind/z;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_2
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :catchall_0
    move-exception p0

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw p0
.end method

.method public findConvertingContentSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/d;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_neitherNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/d;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/d;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/fasterxml/jackson/databind/e;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/j;

    move-result-object p0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-object p2, p0

    check-cast p2, Lcom/fasterxml/jackson/databind/deser/impl/g;

    iget-object p2, p2, Lcom/fasterxml/jackson/databind/deser/impl/g;->a:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/z;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p3

    :cond_0
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    invoke-direct {p1, p0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/j;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;)V

    return-object p1

    :cond_1
    return-object p3
.end method

.method public findFormatFeature(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/d;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->findFormatOverrides(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public findFormatOverrides(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/d;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Value;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p0

    invoke-interface {p2, p0, p3}, Lcom/fasterxml/jackson/databind/d;->findPropertyFormat(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/z;->getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p0

    return-object p0
.end method

.method public findIncludeOverrides(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/d;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p0

    invoke-interface {p2, p0, p3}, Lcom/fasterxml/jackson/databind/d;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/z;->getDefaultPropertyInclusion(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p0

    return-object p0
.end method

.method public findPropertyFilter(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/j;
    .locals 1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getFilterProvider()Lcom/fasterxml/jackson/databind/ser/g;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->handledType()Ljava/lang/Class;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot resolve PropertyFilter with id \'"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'; no FilterProvider configured"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/fasterxml/jackson/databind/e;->reportBadDefinition(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/ser/j;

    return-object p0

    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/g;->findPropertyFilter(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/j;

    move-result-object p0

    return-object p0
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/z;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    .line 1
    const-string p1, "string"

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    return-object p0
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/z;Ljava/lang/reflect/Type;Z)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->getSchema(Lcom/fasterxml/jackson/databind/z;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez p3, :cond_0

    xor-int/lit8 p1, p3, 0x1

    const-string p2, "required"

    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    :cond_0
    return-object p0
.end method

.method public handledType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_handledType:Ljava/lang/Class;

    return-object p0
.end method

.method public isDefaultSerializer(Lcom/fasterxml/jackson/databind/o;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/o;",
            ")Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/h;->v(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/f;",
            "Lcom/fasterxml/jackson/databind/z;",
            ")V"
        }
    .end annotation
.end method

.method public visitArrayFormat(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public visitArrayFormat(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj2/b;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/o;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_neitherNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    throw p0
.end method

.method public visitFloatFormat(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser$NumberType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public visitIntFormat(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser$NumberType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->_neitherNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    throw p0
.end method

.method public visitIntFormat(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser$NumberType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public visitStringFormat(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public visitStringFormat(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public wrapAndThrow(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Throwable;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    :goto_0
    instance-of p0, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/h;->C(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_2

    sget-object p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/z;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_4

    if-eqz p0, :cond_3

    instance-of p0, p2, Lcom/fasterxml/jackson/core/JacksonException;

    if-nez p0, :cond_5

    :cond_3
    check-cast p2, Ljava/io/IOException;

    throw p2

    :cond_4
    if-nez p0, :cond_5

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/h;->E(Ljava/lang/Throwable;)V

    :cond_5
    invoke-static {p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p0

    throw p0
.end method

.method public wrapAndThrow(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 2
    :goto_0
    instance-of p0, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/h;->C(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_2

    sget-object p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/z;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_4

    if-eqz p0, :cond_3

    instance-of p0, p2, Lcom/fasterxml/jackson/core/JacksonException;

    if-nez p0, :cond_5

    :cond_3
    check-cast p2, Ljava/io/IOException;

    throw p2

    :cond_4
    if-nez p0, :cond_5

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/h;->E(Ljava/lang/Throwable;)V

    :cond_5
    invoke-static {p2, p3, p4}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p0

    throw p0
.end method
