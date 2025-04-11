.class public Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;
.super Landroid/database/ContentObserver;
.source "EdgeLightingClientManager.java"


# instance fields
.field public final EDGE_LIGHTING_SETTING:Landroid/net/Uri;

.field public final EDGE_LIGHTING_SHOW_CONDITION:Landroid/net/Uri;

.field public final defaultCarrierEdgeLighting:Ljava/lang/String;

.field public final defaultEdgeLighting:Ljava/lang/String;

.field public mDefaultValue:I

.field public mLastEnabled:Z

.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;Landroid/os/Handler;)V
    .locals 7

    .line 633
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 634
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p2, 0x0

    .line 623
    iput-boolean p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    const-string v0, "edge_lighting"

    .line 626
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SETTING:Landroid/net/Uri;

    const-string v2, "edge_lighting_show_condition"

    .line 627
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SHOW_CONDITION:Landroid/net/Uri;

    .line 629
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Framework_ConfigDefStatusEdgeLighting"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->defaultEdgeLighting:Ljava/lang/String;

    .line 630
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v4

    const-string v5, "CarrierFeature_SystemUI_ConfigDefStatusEdgeLighting"

    const-string v6, ""

    invoke-virtual {v4, p2, v5, v6, p2}, Lcom/samsung/android/feature/SemCarrierFeature;->getString(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->defaultCarrierEdgeLighting:Ljava/lang/String;

    const-string v5, "-defaulton"

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    .line 635
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v4, :cond_2

    .line 636
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v3, p2

    goto :goto_0

    :cond_2
    move v3, v6

    :goto_0
    iput v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    .line 638
    invoke-static {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmContext(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    const/4 v5, -0x2

    invoke-static {v3, v0, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v6, :cond_3

    goto :goto_1

    :cond_3
    move v6, p2

    :goto_1
    iput-boolean v6, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 639
    invoke-static {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmContext(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x1

    .line 640
    invoke-virtual {p1, v1, p2, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 641
    invoke-virtual {p1, v2, p2, p0, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 642
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EdgeLightingSettingObserver : mLastEnabled = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mDefaultValue = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isEdgeLightingEnabled()Z
    .locals 0

    .line 686
    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    return p0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    const/4 p1, -0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 647
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SETTING:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 648
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmContext(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "edge_lighting"

    iget v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 649
    :goto_0
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChange - edge_lighting : newValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mLastEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-boolean v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    if-eq v2, v3, :cond_2

    .line 651
    iput-boolean v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    if-eqz v2, :cond_2

    .line 653
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.edgelighting.EdgeLightingService"

    .line 654
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {v3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmContext(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 658
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 664
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->EDGE_LIGHTING_SHOW_CONDITION:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 665
    :cond_3
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmContext(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "edge_lighting_show_condition"

    invoke-static {p2, v2, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    .line 678
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {p1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fputmCondition(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;I)V

    goto :goto_2

    .line 672
    :cond_4
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {p1, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fputmCondition(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;I)V

    goto :goto_2

    .line 669
    :cond_5
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fputmCondition(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;I)V

    .line 681
    :goto_2
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChange - edge_lighting_show_condition : mCondition = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmCondition(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public recheckEdgeLightingDefaultValue()V
    .locals 7

    const-string v0, "edge_lighting"

    .line 694
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->defaultEdgeLighting:Ljava/lang/String;

    const-string v2, "-defaulton"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->defaultCarrierEdgeLighting:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 695
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    iput v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    .line 696
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recheckEdgeLightingDefaultValue : mDefaultValue = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    .line 698
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmContext(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_3

    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 699
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "recheckEdgeLightingDefaultValue : mLastEnabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 701
    :catch_0
    iget v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    if-ne v2, v4, :cond_4

    move v3, v4

    :cond_4
    iput-boolean v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    .line 702
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {v2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmContext(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    invoke-static {v2, v0, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 703
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recheckEdgeLightingDefaultValue - SettingNotFoundException : mLastEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public resetEdgeLightingEnabled()V
    .locals 4

    .line 690
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmContext(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mDefaultValue:I

    const/4 v2, -0x2

    const-string v3, "edge_lighting"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->mLastEnabled:Z

    return-void
.end method
