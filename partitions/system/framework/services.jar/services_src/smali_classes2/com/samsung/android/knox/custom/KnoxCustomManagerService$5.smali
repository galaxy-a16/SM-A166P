.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;
.super Ljava/lang/Object;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .locals 0

    .line 10658
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 10661
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmTempContext(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "tethering"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 10663
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbNetStateInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 10664
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$5;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$menableTethering(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 10666
    invoke-virtual {v0, p0}, Landroid/net/TetheringManager;->setUsbTethering(Z)I

    move-result p0

    :goto_0
    const-string v0, "KnoxCustomManagerService"

    if-nez p0, :cond_1

    const-string/jumbo p0, "startUsbNet OK"

    .line 10669
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10671
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUsbNet failed with error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
