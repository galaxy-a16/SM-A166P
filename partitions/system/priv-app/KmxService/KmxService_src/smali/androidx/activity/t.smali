.class public final synthetic Landroidx/activity/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lvb/a;


# direct methods
.method public synthetic constructor <init>(Lvb/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/t;->a:Lvb/a;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    const-string v0, "$onBackInvoked"

    iget-object p0, p0, Landroidx/activity/t;->a:Lvb/a;

    invoke-static {p0, v0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lvb/a;->invoke()Ljava/lang/Object;

    return-void
.end method
