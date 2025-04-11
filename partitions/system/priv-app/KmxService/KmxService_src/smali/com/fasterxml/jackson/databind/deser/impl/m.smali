.class public final Lcom/fasterxml/jackson/databind/deser/impl/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

.field public b:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/m;->a:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/deser/impl/l;)V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/m;->b:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/m;->b:Ljava/util/LinkedList;

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/m;->b:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/m;->a:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
