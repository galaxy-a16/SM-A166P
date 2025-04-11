.class public final Lt/v;
.super Lt/y;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lt/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lt/y;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(Lt/k0;)V
    .locals 1

    iget-object p1, p1, Lt/k0;->b:Landroid/app/Notification$Builder;

    invoke-static {p1}, Lt/u;->b(Landroid/app/Notification$Builder;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lt/u;->c(Landroid/app/Notification$BigTextStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-object p0, p0, Lt/v;->b:Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Lt/u;->a(Landroid/app/Notification$BigTextStyle;Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "androidx.core.app.NotificationCompat$BigTextStyle"

    return-object p0
.end method
