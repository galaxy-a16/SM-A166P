.class public Lcom/android/server/input/ToastDialog$1;
.super Ljava/lang/Object;
.source "ToastDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/ToastDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/input/ToastDialog;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/android/server/input/ToastDialog$1;->this$0:Lcom/android/server/input/ToastDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 207
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
