.class public Lcom/android/server/DirEncryptServiceHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "DirEncryptServiceHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptServiceHelper;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$1;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 120
    new-instance p1, Lcom/android/server/DirEncryptServiceHelper$1$1;

    invoke-direct {p1, p0, p2}, Lcom/android/server/DirEncryptServiceHelper$1$1;-><init>(Lcom/android/server/DirEncryptServiceHelper$1;Landroid/content/Intent;)V

    .line 141
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
