.class public final Lcom/android/server/inputmethod/InputMethodDialogWindowContext;
.super Ljava/lang/Object;
.source "InputMethodDialogWindowContext.java"


# instance fields
.field public mDialogWindowContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Landroid/content/Context;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->mDialogWindowContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 49
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->getSystemUiContext(I)Landroid/app/ContextImpl;

    move-result-object p1

    const/16 v0, 0x7dc

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    .line 53
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030223

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->mDialogWindowContext:Landroid/content/Context;

    .line 56
    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->mDialogWindowContext:Landroid/content/Context;

    return-object p0
.end method
