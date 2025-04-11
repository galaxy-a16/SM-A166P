.class public final Lcom/fasterxml/jackson/databind/util/a0;
.super Lcom/fasterxml/jackson/core/i;
.source "SourceFile"


# instance fields
.field public final c:Lcom/fasterxml/jackson/core/i;

.field public final d:Lcom/fasterxml/jackson/core/JsonLocation;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/i;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/a0;->c:Lcom/fasterxml/jackson/core/i;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/a0;->d:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/i;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/i;-><init>(Lcom/fasterxml/jackson/core/i;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/i;->c()Lcom/fasterxml/jackson/core/i;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/a0;->c:Lcom/fasterxml/jackson/core/i;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/a0;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/i;->b()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/a0;->f:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/a0;->d:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/i;Lcom/fasterxml/jackson/core/io/ContentReference;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/i;-><init>(Lcom/fasterxml/jackson/core/i;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/i;->c()Lcom/fasterxml/jackson/core/i;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/a0;->c:Lcom/fasterxml/jackson/core/i;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/a0;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/i;->b()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/a0;->f:Ljava/lang/Object;

    instance-of v0, p1, Lc2/c;

    if-eqz v0, :cond_0

    check-cast p1, Lc2/c;

    const-wide/16 v2, -0x1

    .line 3
    new-instance v6, Lcom/fasterxml/jackson/core/JsonLocation;

    iget v4, p1, Lc2/c;->h:I

    iget v5, p1, Lc2/c;->i:I

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Lcom/fasterxml/jackson/core/io/ContentReference;JII)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v6, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    :goto_0
    iput-object v6, p0, Lcom/fasterxml/jackson/databind/util/a0;->d:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/a0;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/core/i;-><init>(I)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/a0;->c:Lcom/fasterxml/jackson/core/i;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/util/a0;->d:Lcom/fasterxml/jackson/core/JsonLocation;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/a0;->d:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/a0;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/a0;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final c()Lcom/fasterxml/jackson/core/i;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/a0;->c:Lcom/fasterxml/jackson/core/i;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/util/a0;->e:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/a0;->f:Ljava/lang/Object;

    return-void
.end method
