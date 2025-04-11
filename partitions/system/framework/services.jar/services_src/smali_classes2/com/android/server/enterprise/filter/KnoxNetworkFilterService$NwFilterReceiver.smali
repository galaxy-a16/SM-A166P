.class public Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KnoxNetworkFilterService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 801
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 802
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_9

    .line 803
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 804
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v2, "new_install_or_update"

    const-string/jumbo v3, "package"

    const-string/jumbo v4, "uid"

    const-string v5, "android.intent.extra.UID"

    const-string v6, "android.intent.extra.REPLACING"

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    .line 805
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 806
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 807
    :cond_0
    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 808
    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-le p2, v7, :cond_9

    .line 810
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 811
    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 813
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$msendMessageToHandler(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 816
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 817
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 818
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .line 819
    :cond_2
    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 820
    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 821
    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 822
    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 824
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p1, 0x2

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$msendMessageToHandler(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 826
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 827
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 828
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p2, 0x3

    invoke-static {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$msendMessageToHandler(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 830
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 831
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 832
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p2, 0x4

    invoke-static {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$msendMessageToHandler(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 834
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 835
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 836
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p2, 0x5

    invoke-static {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$msendMessageToHandler(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 838
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo p1, "state"

    .line 839
    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 841
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p1, 0x6

    invoke-static {p0, p1, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$msendMessageToHandler(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_7
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 844
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 845
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 846
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p2, 0x7

    invoke-static {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$msendMessageToHandler(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_8
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 848
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 849
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 850
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/16 p2, 0xc

    invoke-static {p0, p2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$msendMessageToHandler(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;ILandroid/os/Bundle;)V

    :cond_9
    :goto_0
    return-void
.end method
