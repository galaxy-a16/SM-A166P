.class public final Lcom/fasterxml/jackson/databind/deser/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/fasterxml/jackson/core/JsonLocation;

.field public final c:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/u;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/u;->c:Ljava/lang/Class;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/u;->b:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/u;->a:Ljava/lang/Object;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/u;->c:Ljava/lang/Class;

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/u;->b:Lcom/fasterxml/jackson/core/JsonLocation;

    aput-object p0, v0, v1

    const-string p0, "Object id [%s] (for %s) at %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
