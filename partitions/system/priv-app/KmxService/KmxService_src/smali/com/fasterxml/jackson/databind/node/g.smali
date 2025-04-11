.class public abstract Lcom/fasterxml/jackson/databind/node/g;
.super Lcom/fasterxml/jackson/core/i;
.source "SourceFile"


# instance fields
.field public final c:Lcom/fasterxml/jackson/databind/node/g;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILcom/fasterxml/jackson/databind/node/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/i;-><init>()V

    iput p1, p0, Lcom/fasterxml/jackson/core/i;->a:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/fasterxml/jackson/core/i;->b:I

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/node/g;->c:Lcom/fasterxml/jackson/databind/node/g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/g;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/node/g;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/g;->e:Ljava/lang/Object;

    return-void
.end method

.method public abstract j()Lcom/fasterxml/jackson/databind/k;
.end method

.method public abstract k()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public abstract l()Lcom/fasterxml/jackson/databind/node/d;
.end method

.method public abstract m()Lcom/fasterxml/jackson/databind/node/e;
.end method
