.class public final Lcom/fasterxml/jackson/databind/deser/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

.field public final b:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field public final c:Lcom/fasterxml/jackson/databind/c;

.field public final d:Ljava/util/LinkedHashMap;

.field public e:Ljava/util/ArrayList;

.field public f:Ljava/util/HashMap;

.field public g:Ljava/util/HashSet;

.field public h:Ljava/util/HashSet;

.field public i:Lcom/fasterxml/jackson/databind/deser/v;

.field public j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

.field public k:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

.field public l:Z

.field public m:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/f;->d:Ljava/util/LinkedHashMap;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/f;->c:Lcom/fasterxml/jackson/databind/c;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/f;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/f;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/f;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyAliases(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/f;->c:Lcom/fasterxml/jackson/databind/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/c;->b()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getFeature(Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/f;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_PROPERTIES:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final c(Ljava/util/Collection;)V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/f;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->fixAccess(Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/deser/f;->d(Ljava/lang/IllegalArgumentException;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/f;->k:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->fixAccess(Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/f;->d(Ljava/lang/IllegalArgumentException;)V

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/f;->m:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz p1, :cond_2

    :try_start_2
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/f;->d(Ljava/lang/IllegalArgumentException;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final d(Ljava/lang/IllegalArgumentException;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/f;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/f;->c:Lcom/fasterxml/jackson/databind/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/c;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/DatabindException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    throw p0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/f;->g:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/f;->g:Ljava/util/HashSet;

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/f;->g:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 3

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/f;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/f;->c:Lcom/fasterxml/jackson/databind/c;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
    .locals 14

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/f;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/f;->c(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/f;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/f;->b()Z

    move-result v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/f;->a:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-static {v3, v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/util/Collection;Ljava/util/Map;Z)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->assignIndexes()Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasViews()Z

    move-result v4

    if-eqz v4, :cond_0

    move v13, v3

    goto :goto_0

    :cond_1
    move v13, v2

    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/f;->j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/f;->j:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    sget-object v3, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-direct {v0, v2, v3}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->withProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    move-result-object v1

    :cond_2
    move-object v8, v1

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/f;->c:Lcom/fasterxml/jackson/databind/c;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/f;->f:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/f;->g:Ljava/util/HashSet;

    iget-boolean v11, p0, Lcom/fasterxml/jackson/databind/deser/f;->l:Z

    iget-object v12, p0, Lcom/fasterxml/jackson/databind/deser/f;->h:Ljava/util/HashSet;

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/f;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLjava/util/Set;Z)V

    return-object v0
.end method
