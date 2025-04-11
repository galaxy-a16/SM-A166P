.class public abstract Lo/n;
.super Lo/f;
.source "SourceFile"


# instance fields
.field public k0:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/f;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/n;->k0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/firebase/messaging/r;)V
    .locals 3

    invoke-super {p0, p1}, Lo/f;->A(Lcom/google/firebase/messaging/r;)V

    iget-object v0, p0, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/f;

    invoke-virtual {v2, p1}, Lo/f;->A(Lcom/google/firebase/messaging/r;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract J()V
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lo/n;->k0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-super {p0}, Lo/f;->y()V

    return-void
.end method
