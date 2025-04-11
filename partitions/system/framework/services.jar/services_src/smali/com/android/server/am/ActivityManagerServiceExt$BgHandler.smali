.class public final Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;
.super Landroid/os/Handler;
.source "ActivityManagerServiceExt.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$BgHandler;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p0, p1, Landroid/os/Message;->what:I

    return-void
.end method
