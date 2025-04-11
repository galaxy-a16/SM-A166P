.class public final Ld1/a;
.super Ld1/v;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ld1/v;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ld1/v;->J(I)V

    new-instance v1, Ld1/h;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ld1/h;-><init>(I)V

    invoke-virtual {p0, v1}, Ld1/v;->H(Ld1/q;)V

    new-instance v1, Ld1/f;

    invoke-direct {v1}, Ld1/f;-><init>()V

    invoke-virtual {p0, v1}, Ld1/v;->H(Ld1/q;)V

    new-instance v1, Ld1/h;

    invoke-direct {v1, v0}, Ld1/h;-><init>(I)V

    invoke-virtual {p0, v1}, Ld1/v;->H(Ld1/q;)V

    return-void
.end method
