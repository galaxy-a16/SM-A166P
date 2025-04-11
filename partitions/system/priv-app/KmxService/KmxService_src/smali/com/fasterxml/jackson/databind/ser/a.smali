.class public final Lcom/fasterxml/jackson/databind/ser/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/d;

.field public final b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

.field public c:Lcom/fasterxml/jackson/databind/o;

.field public d:Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/BeanProperty$Std;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/a;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/a;->a:Lcom/fasterxml/jackson/databind/d;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/a;->c:Lcom/fasterxml/jackson/databind/o;

    instance-of p1, p3, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    if-eqz p1, :cond_0

    check-cast p3, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/a;->d:Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/ser/j;)V
    .locals 10

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/a;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    instance-of v2, v1, Ljava/util/Map;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/a;->a:Lcom/fasterxml/jackson/databind/d;

    invoke-interface {v2}, Lcom/fasterxml/jackson/databind/d;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/b;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v0, "Value returned by \'any-getter\' (%s()) not java.util.Map but %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Lcom/fasterxml/jackson/databind/z;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/a;->d:Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    if-eqz v3, :cond_2

    move-object v7, v1

    check-cast v7, Ljava/util/Map;

    const/4 v9, 0x0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    move-object v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeFilteredAnyProperties(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/core/f;Ljava/lang/Object;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ser/j;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/a;->c:Lcom/fasterxml/jackson/databind/o;

    invoke-virtual {p0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/a;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/a;->a:Lcom/fasterxml/jackson/databind/d;

    invoke-interface {v1}, Lcom/fasterxml/jackson/databind/d;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/b;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v0, "Value returned by \'any-getter\' %s() not java.util.Map but %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Lcom/fasterxml/jackson/databind/z;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/a;->d:Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->serializeWithoutTypeInfo(Ljava/util/Map;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/a;->c:Lcom/fasterxml/jackson/databind/o;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    return-void
.end method
