.class public final Lc3/f0;
.super Lc3/v;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lc3/e;


# direct methods
.method public constructor <init>(Lc3/e;I)V
    .locals 1

    iput-object p1, p0, Lc3/f0;->g:Lc3/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc3/v;-><init>(Lc3/e;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a(La3/b;)V
    .locals 0

    iget-object p0, p0, Lc3/f0;->g:Lc3/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lc3/e;->j:Lc3/d;

    invoke-interface {p0, p1}, Lc3/d;->m(La3/b;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object p0, p0, Lc3/f0;->g:Lc3/e;

    iget-object p0, p0, Lc3/e;->j:Lc3/d;

    sget-object v0, La3/b;->e:La3/b;

    invoke-interface {p0, v0}, Lc3/d;->m(La3/b;)V

    const/4 p0, 0x1

    return p0
.end method
