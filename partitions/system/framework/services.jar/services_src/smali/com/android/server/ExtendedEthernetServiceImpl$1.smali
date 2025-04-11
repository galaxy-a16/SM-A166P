.class public Lcom/android/server/ExtendedEthernetServiceImpl$1;
.super Ljava/lang/Object;
.source "ExtendedEthernetServiceImpl.java"

# interfaces
.implements Landroid/net/EthernetManager$TetheredInterfaceCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$1;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Ljava/lang/String;)V
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TetheredInterfaceCallback onAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ExtendedEthernetServiceImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$1;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {p1}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/ExtendedEthernetServiceImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ETHERNET_TETHERING_MODE"

    .line 90
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance p1, Lcom/android/server/ExtendedEthernetServiceImpl$1$1;

    invoke-direct {p1, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$1;-><init>(Lcom/android/server/ExtendedEthernetServiceImpl$1;)V

    .line 101
    new-instance v0, Landroid/net/TetheringManager$TetheringRequest$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/net/TetheringManager$TetheringRequest$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/net/TetheringManager$TetheringRequest$Builder;->build()Landroid/net/TetheringManager$TetheringRequest;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$1;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {v1}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$fgetmTetheringManager(Lcom/android/server/ExtendedEthernetServiceImpl;)Landroid/net/TetheringManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$1;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-static {p0}, Lcom/android/server/ExtendedEthernetServiceImpl;->-$$Nest$fgetmHandler(Lcom/android/server/ExtendedEthernetServiceImpl;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, p1}, Landroid/net/TetheringManager;->startTethering(Landroid/net/TetheringManager$TetheringRequest;Ljava/util/concurrent/Executor;Landroid/net/TetheringManager$StartTetheringCallback;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 1

    const-string p0, "ExtendedEthernetServiceImpl"

    const-string v0, "TetheredInterfaceCallback onUnavailable"

    .line 107
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
