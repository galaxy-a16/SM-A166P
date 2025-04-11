.class public final Lcom/fasterxml/jackson/databind/deser/impl/i;
.super Ld/g0;
.source "SourceFile"


# instance fields
.field public final c:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ld/g0;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld/g0;-><init>(Ld/g0;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->c:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ld/g0;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->c:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/i;->d:Ljava/lang/String;

    invoke-virtual {v1, p1, p0, v0}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->set(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
