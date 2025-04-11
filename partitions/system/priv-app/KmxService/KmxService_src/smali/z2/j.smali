.class public final Lz2/j;
.super Lz2/k;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public constructor <init>(IILandroid/os/Bundle;I)V
    .locals 1

    iput p4, p0, Lz2/j;->e:I

    const/4 v0, 0x1

    if-eq p4, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lz2/k;-><init>(IILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lz2/k;-><init>(IILandroid/os/Bundle;)V

    return-void
.end method
