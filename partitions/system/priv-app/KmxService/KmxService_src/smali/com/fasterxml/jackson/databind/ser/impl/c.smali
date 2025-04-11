.class public final Lcom/fasterxml/jackson/databind/ser/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/JavaType;

.field public final b:Lcom/fasterxml/jackson/core/l;

.field public final c:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

.field public final d:Lcom/fasterxml/jackson/databind/o;

.field public final e:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/l;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/o;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/c;->b:Lcom/fasterxml/jackson/core/l;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/c;->c:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/impl/c;->d:Lcom/fasterxml/jackson/databind/o;

    iput-boolean p5, p0, Lcom/fasterxml/jackson/databind/ser/impl/c;->e:Z

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/c;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v3, v0

    new-instance p1, Lcom/fasterxml/jackson/databind/ser/impl/c;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/ser/impl/c;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/l;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/o;Z)V

    return-object p1
.end method
