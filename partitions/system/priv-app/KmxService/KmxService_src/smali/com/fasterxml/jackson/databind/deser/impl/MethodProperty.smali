.class public final Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;
.super Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

.field protected final transient _setter:Ljava/lang/reflect/Method;

.field protected final _skipNulls:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/deser/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;",
            "Lcom/fasterxml/jackson/databind/i;",
            "Lcom/fasterxml/jackson/databind/deser/r;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/deser/r;)V

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    invoke-static {p3}, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->isSkipper(Lcom/fasterxml/jackson/databind/deser/r;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/q;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/util/a;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/q;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/g;Lcom/fasterxml/jackson/databind/util/a;)V

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_nullProvider:Lcom/fasterxml/jackson/databind/deser/r;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/impl/NullsConstantProvider;->isSkipper(Lcom/fasterxml/jackson/databind/deser/r;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/g;->V0(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_nullProvider:Lcom/fasterxml/jackson/databind/deser/r;

    invoke-interface {v0, p2}, Lcom/fasterxml/jackson/databind/deser/r;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/i;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    if-eqz v0, :cond_0

    return-void

    :cond_2
    move-object p2, v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/i;->deserializeWithType(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/g;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_throwAsIOE(Lcom/fasterxml/jackson/core/g;Ljava/lang/Exception;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public deserializeSetAndReturn(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/g;->V0(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_nullProvider:Lcom/fasterxml/jackson/databind/deser/r;

    invoke-interface {v0, p2}, Lcom/fasterxml/jackson/databind/deser/r;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/g;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/i;->deserialize(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_skipNulls:Z

    if-eqz v0, :cond_0

    return-object p3

    :cond_2
    move-object p2, v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/i;->deserializeWithType(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/g;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object p3, p0

    :goto_1
    return-object p3

    :catch_0
    move-exception p3

    invoke-virtual {p0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_throwAsIOE(Lcom/fasterxml/jackson/core/g;Ljava/lang/Exception;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public fixAccess(Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    return-void
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    return-object p0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_annotated:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;->_setter:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Lcom/fasterxml/jackson/databind/PropertyName;)V

    return-object v0
.end method

.method public withNullProvider(Lcom/fasterxml/jackson/databind/deser/r;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    invoke-direct {v0, p0, v1, p1}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/deser/r;)V

    return-object v0
.end method

.method public withValueDeserializer(Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/i;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_valueDeserializer:Lcom/fasterxml/jackson/databind/i;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->_nullProvider:Lcom/fasterxml/jackson/databind/deser/r;

    if-ne v0, v1, :cond_1

    move-object v1, p1

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;Lcom/fasterxml/jackson/databind/i;Lcom/fasterxml/jackson/databind/deser/r;)V

    return-object v0
.end method
