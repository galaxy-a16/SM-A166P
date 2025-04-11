.class public Lcom/android/server/ExtendedEthernetServiceImpl$3;
.super Landroid/database/ContentObserver;
.source "ExtendedEthernetServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl;Landroid/os/Handler;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$3;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 128
    iget-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$3;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {p1}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/ExtendedEthernetServiceImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "eth_disabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ETH_DISABLED is changed to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExtendedEthernetServiceImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    return-void

    .line 133
    :cond_1
    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$3;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {p0}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$msetLinkDown(Lcom/android/server/ExtendedEthernetServiceImpl;)V

    return-void
.end method
