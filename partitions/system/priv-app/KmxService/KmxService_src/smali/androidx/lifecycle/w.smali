.class public final Landroidx/lifecycle/w;
.super Landroidx/lifecycle/k;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/k;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Landroidx/lifecycle/x0;->a:I

    invoke-static {p1}, Lh5/d;->s(Landroid/app/Activity;)V

    return-void
.end method
