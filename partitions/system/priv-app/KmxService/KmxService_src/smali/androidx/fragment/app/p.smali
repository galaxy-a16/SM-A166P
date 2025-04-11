.class public final Landroidx/fragment/app/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/s;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/s;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/s;

    invoke-static {p0}, Landroidx/fragment/app/s;->access$000(Landroidx/fragment/app/s;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroidx/fragment/app/s;->access$000(Landroidx/fragment/app/s;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/s;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
