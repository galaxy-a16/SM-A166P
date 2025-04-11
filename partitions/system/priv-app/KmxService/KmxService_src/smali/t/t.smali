.class public final Lt/t;
.super Lt/y;
.source "SourceFile"


# instance fields
.field public b:Landroidx/core/graphics/drawable/IconCompat;

.field public c:Landroidx/core/graphics/drawable/IconCompat;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lt/k0;)V
    .locals 3

    iget-object v0, p1, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {v0}, Lt/q;->b(Landroid/app/Notification$Builder;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lt/q;->c(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    iget-object v2, p0, Lt/t;->b:Landroidx/core/graphics/drawable/IconCompat;

    iget-object p1, p1, Lt/k0;->a:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-static {v2, p1}, Lx/d;->c(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v0, v2}, Lt/s;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    :cond_0
    iget-boolean v2, p0, Lt/t;->d:Z

    if-eqz v2, :cond_2

    iget-object p0, p0, Lt/t;->c:Landroidx/core/graphics/drawable/IconCompat;

    if-nez p0, :cond_1

    invoke-static {v0, v1}, Lt/q;->d(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lx/d;->c(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-static {v0, p0}, Lt/r;->a(Landroid/app/Notification$BigPictureStyle;Landroid/graphics/drawable/Icon;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    invoke-static {v0, p0}, Lt/s;->c(Landroid/app/Notification$BigPictureStyle;Z)V

    invoke-static {v0, v1}, Lt/s;->b(Landroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "androidx.core.app.NotificationCompat$BigPictureStyle"

    return-object p0
.end method
