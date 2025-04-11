.class public final Lo9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lo9/b;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ld/f0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo9/b;->a:Ljava/util/HashMap;

    new-instance v0, Ld/f0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ld/f0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lo9/b;->b:Ld/f0;

    return-void
.end method

.method public static a(Landroidx/core/view/s;Landroidx/core/view/s;Landroidx/core/view/s;Landroidx/core/view/s;)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p2, Landroidx/core/view/s;->b:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-static {p2, p3, v0, v1}, Lkotlin/jvm/internal/m;->m(Landroidx/core/view/s;Landroidx/core/view/s;J)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "can\'t display now due to doNotDisturbTime"

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, v0, v1}, Lkotlin/jvm/internal/m;->m(Landroidx/core/view/s;Landroidx/core/view/s;J)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "can\'t display now. not yet display time"

    :goto_0
    const-string p1, "b"

    invoke-static {p1, p0}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
