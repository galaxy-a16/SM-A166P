.class public abstract Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "TT;>;",
        "Lcom/fasterxml/jackson/databind/ser/f;"
    }
.end annotation


# static fields
.field public static final MARKER_FOR_EMPTY:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

.field protected final _property:Lcom/fasterxml/jackson/databind/d;

.field protected final _referredType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _suppressNulls:Z

.field protected final _suppressableValue:Ljava/lang/Object;

.field protected final _unwrapper:Lcom/fasterxml/jackson/databind/util/p;

.field protected final _valueSerializer:Lcom/fasterxml/jackson/databind/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation
.end field

.field protected final _valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/util/p;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/d;",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            "Lcom/fasterxml/jackson/databind/o;",
            "Lcom/fasterxml/jackson/databind/util/p;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;)V

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    sget-object p1, Lcom/fasterxml/jackson/databind/ser/impl/e;->b:Lcom/fasterxml/jackson/databind/ser/impl/e;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/p;

    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressableValue:Ljava/lang/Object;

    iput-boolean p7, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressNulls:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/type/ReferenceType;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getReferencedType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/p;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressableValue:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressNulls:Z

    sget-object p1, Lcom/fasterxml/jackson/databind/ser/impl/e;->b:Lcom/fasterxml/jackson/databind/ser/impl/e;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    return-void
.end method

.method private final _findCachedSerializer(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/ser/impl/i;->d(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/z;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/z;->findPrimaryPropertySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/z;->findPrimaryPropertySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/p;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/o;->unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/p;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p1

    :cond_1
    move-object v0, p1

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/impl/i;->c(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/impl/i;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    :cond_2
    return-object v0
.end method

.method private final _findSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/z;->findPrimaryPropertySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract _getReferenced(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract _getReferencedIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract _isValuePresent(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public _useStatic(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 2

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isFinal()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->useStaticType()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    if-eqz p0, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/d;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/d;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object p0

    sget-object p2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-ne p0, p2, :cond_3

    return v1

    :cond_3
    sget-object p2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DYNAMIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-ne p0, p2, :cond_4

    return v0

    :cond_4
    sget-object p0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/z;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p0

    return p0
.end method

.method public acceptJsonFormatVisitor(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 2

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    if-nez p2, :cond_0

    move-object p2, p1

    check-cast p2, Lva/f;

    iget-object p2, p2, Lva/f;->a:Ljava/lang/Object;

    check-cast p2, Lcom/fasterxml/jackson/databind/z;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    invoke-direct {p0, p2, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_findSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/p;

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/o;->unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/p;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p2

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p2, p1, p0}, Lcom/fasterxml/jackson/databind/o;->acceptJsonFormatVisitor(Lj2/b;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-void
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/k;->a(Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->findAnnotatedContentSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, p1, p2, v2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_useStatic(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/JavaType;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {p0, p1, v1, p2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_findSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/z;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    if-ne v2, p2, :cond_3

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    if-ne v2, v1, :cond_3

    move-object v0, p0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/p;

    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->withResolved(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/util/p;)Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;

    move-result-object v0

    :goto_1
    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->handledType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/fasterxml/jackson/databind/d;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v1, v2, :cond_b

    sget-object v2, Lcom/fasterxml/jackson/databind/ser/std/g;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_7

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    const/4 p1, 0x5

    if-eq v1, p1, :cond_9

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentFilter()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Lcom/fasterxml/jackson/databind/z;->includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/z;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1}, Lf2/a;->isReferenceType()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_7
    sget-object v4, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {p1}, Lg2/m;->e(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/c;->b(Ljava/lang/Object;)Lv/c;

    move-result-object v4

    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressableValue:Ljava/lang/Object;

    if-ne p1, v4, :cond_a

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressNulls:Z

    if-eq p0, v2, :cond_b

    :cond_a
    invoke-virtual {v0, v4, v2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public getReferredType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_referredType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object p0
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "TT;)Z"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_isValuePresent(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_getReferenced(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressNulls:Z

    return p0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressableValue:Ljava/lang/Object;

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_findCachedSerializer(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;

    invoke-direct {p1, p0}, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;-><init>(Lcom/fasterxml/jackson/databind/JsonMappingException;)V

    throw p1

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_suppressableValue:Ljava/lang/Object;

    sget-object v1, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    if-ne p0, v1, :cond_4

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/o;->isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isUnwrappingSerializer()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/p;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/f;",
            "Lcom/fasterxml/jackson/databind/z;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_getReferencedIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/p;

    if-nez p0, :cond_0

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/z;->defaultSerializeNull(Lcom/fasterxml/jackson/core/f;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_findCachedSerializer(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    :cond_2
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    if-eqz p0, :cond_3

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/fasterxml/jackson/databind/o;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    :goto_0
    return-void
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/f;",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_getReferencedIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/p;

    if-nez p0, :cond_0

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/z;->defaultSerializeNull(Lcom/fasterxml/jackson/core/f;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_findCachedSerializer(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    :cond_2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/o;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    return-void
.end method

.method public unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/p;)Lcom/fasterxml/jackson/databind/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/p;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/o;->unwrappingSerializer(Lcom/fasterxml/jackson/databind/util/p;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/p;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/p;->chainedTransformer(Lcom/fasterxml/jackson/databind/util/p;Lcom/fasterxml/jackson/databind/util/p;)Lcom/fasterxml/jackson/databind/util/p;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_unwrapper:Lcom/fasterxml/jackson/databind/util/p;

    if-ne v1, p1, :cond_2

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;->withResolved(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/util/p;)Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;

    move-result-object p0

    return-object p0
.end method

.method public abstract withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract withResolved(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/util/p;)Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/d;",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            "Lcom/fasterxml/jackson/databind/o;",
            "Lcom/fasterxml/jackson/databind/util/p;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer<",
            "TT;>;"
        }
    .end annotation
.end method
