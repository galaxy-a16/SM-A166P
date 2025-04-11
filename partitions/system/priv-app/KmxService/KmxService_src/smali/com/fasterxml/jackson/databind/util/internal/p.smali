.class public final Lcom/fasterxml/jackson/databind/util/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/fasterxml/jackson/databind/util/internal/p;->a:I

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/internal/p;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget p0, p0, Lcom/fasterxml/jackson/databind/util/internal/p;->a:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
