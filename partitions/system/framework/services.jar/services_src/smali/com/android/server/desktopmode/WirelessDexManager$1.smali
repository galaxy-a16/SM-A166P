.class public Lcom/android/server/desktopmode/WirelessDexManager$1;
.super Ljava/lang/Object;
.source "WirelessDexManager.java"

# interfaces
.implements Landroid/hardware/display/SemWifiDisplayParameterListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/WirelessDexManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/WirelessDexManager;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParametersChanged(Ljava/util/List;)V
    .locals 6

    if-eqz p1, :cond_9

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/SemWifiDisplayParameter;

    .line 170
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayParameter;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayParameter;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 173
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onParametersChanged (Key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v2, "wfd_sec_dex_support"

    .line 175
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "yes"

    if-eqz v2, :cond_3

    .line 176
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0, v3}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmReducedLatency(Lcom/android/server/desktopmode/WirelessDexManager;I)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0, v4}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmReducedLatency(Lcom/android/server/desktopmode/WirelessDexManager;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "wfd_sec_dex_mouse_support"

    .line 182
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 183
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0, v3}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmPointerIconSync(Lcom/android/server/desktopmode/WirelessDexManager;I)V

    goto :goto_0

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0, v4}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmPointerIconSync(Lcom/android/server/desktopmode/WirelessDexManager;I)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "notify"

    .line 189
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "weak_network"

    .line 190
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 191
    iget-object v0, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$mshowToastWeakNetwork(Lcom/android/server/desktopmode/WirelessDexManager;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "frequency"

    .line 192
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmFrequencyValue(Lcom/android/server/desktopmode/WirelessDexManager;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 196
    invoke-static {}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong number format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "tizenVer"

    .line 198
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TV Tizen version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_8
    iget-object v1, p0, Lcom/android/server/desktopmode/WirelessDexManager$1;->this$0:Lcom/android/server/desktopmode/WirelessDexManager;

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/WirelessDexManager;->-$$Nest$fputmTvTizenVersion(Lcom/android/server/desktopmode/WirelessDexManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method
