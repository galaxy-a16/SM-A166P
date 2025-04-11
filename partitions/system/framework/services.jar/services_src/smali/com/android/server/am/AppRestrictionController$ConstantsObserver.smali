.class public final Lcom/android/server/am/AppRestrictionController$ConstantsObserver;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public volatile mBgAbusiveNotificationMinIntervalMs:J

.field public volatile mBgAutoRestrictAbusiveApps:Z

.field public volatile mBgAutoRestrictedBucket:Z

.field public volatile mBgLongFgsNotificationMinIntervalMs:J

.field public volatile mBgPromptAbusiveAppsToBgRestricted:Z

.field public volatile mBgPromptFgsOnLongRunning:Z

.field public volatile mBgPromptFgsWithNotiOnLongRunning:Z

.field public volatile mBgPromptFgsWithNotiToBgRestricted:Z

.field public volatile mBgRestrictionExemptedPackages:Ljava/util/Set;

.field public final mDefaultBgPromptAbusiveAppToBgRestricted:Z

.field public final mDefaultBgPromptFgsWithNotiToBgRestricted:Z

.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 1231
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1209
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    .line 1232
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111004a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptFgsWithNotiToBgRestricted:Z

    .line 1234
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110049

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptAbusiveAppToBgRestricted:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1371
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "BACKGROUND RESTRICTION POLICY SETTINGS:"

    .line 1372
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1375
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "bg_auto_restricted_bucket_on_bg_restricted"

    .line 1376
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    .line 1377
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1378
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1379
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bg_auto_restrict_abusive_apps"

    .line 1380
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1382
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1383
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bg_abusive_notification_minimal_interval"

    .line 1384
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1386
    iget-wide v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAbusiveNotificationMinIntervalMs:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 1387
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bg_long_fgs_notification_minimal_interval"

    .line 1388
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1390
    iget-wide v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgLongFgsNotificationMinIntervalMs:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 1391
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bg_prompt_fgs_on_long_running"

    .line 1392
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1393
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1394
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsOnLongRunning:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1395
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bg_prompt_fgs_with_noti_on_long_running"

    .line 1396
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1398
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiOnLongRunning:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1399
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bg_prompt_fgs_with_noti_to_bg_restricted"

    .line 1400
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1402
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiToBgRestricted:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1403
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "bg_prompt_abusive_apps_to_bg_restricted"

    .line 1404
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1406
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptAbusiveAppsToBgRestricted:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1407
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "bg_restriction_exempted_packages"

    .line 1408
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1409
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1410
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    .line 1240
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v1, "bg_"

    .line 1241
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1244
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "bg_prompt_fgs_with_noti_to_bg_restricted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "bg_prompt_fgs_with_noti_on_long_running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_2
    const-string v1, "bg_long_fgs_notification_minimal_interval"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_3
    const-string v1, "bg_abusive_notification_minimal_interval"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "bg_restriction_exempted_packages"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "bg_auto_restricted_bucket_on_bg_restricted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_6
    const-string v1, "bg_prompt_fgs_on_long_running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_7
    const-string v1, "bg_auto_restrict_abusive_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_8
    const-string v1, "bg_prompt_abusive_apps_to_bg_restricted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 1258
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsWithNotiToBgRestricted()V

    goto :goto_2

    .line 1261
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsWithNotiOnLongRunning()V

    goto :goto_2

    .line 1255
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgLongFgsNotificationMinimalInterval()V

    goto :goto_2

    .line 1252
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAbusiveNotificationMinimalInterval()V

    goto :goto_2

    .line 1270
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgRestrictionExemptedPackages()V

    goto :goto_2

    .line 1246
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictedBucketChanged()V

    goto :goto_2

    .line 1264
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsOnLongRunning()V

    goto :goto_2

    .line 1249
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictAbusiveApps()V

    goto :goto_2

    .line 1267
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptAbusiveAppToBgRestricted()V

    .line 1273
    :goto_2
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v1, v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monPropertiesChanged(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x725c6ba9 -> :sswitch_8
        -0x4784dcbb -> :sswitch_7
        -0x22b4a832 -> :sswitch_6
        -0x1796dd64 -> :sswitch_5
        -0x965c8df -> :sswitch_4
        0x32f03e37 -> :sswitch_3
        0x352f0b01 -> :sswitch_2
        0x69968cde -> :sswitch_1
        0x75259a8f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public start()V
    .locals 0

    .line 1278
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateDeviceConfig()V

    return-void
.end method

.method public final updateBgAbusiveNotificationMinimalInterval()V
    .locals 4

    const-string v0, "bg_abusive_notification_minimal_interval"

    const-wide v1, 0x9a7ec800L

    const-string v3, "activity_manager"

    .line 1312
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAbusiveNotificationMinIntervalMs:J

    return-void
.end method

.method public final updateBgAutoRestrictAbusiveApps()V
    .locals 3

    const-string v0, "bg_auto_restrict_abusive_apps"

    const/4 v1, 0x1

    const-string v2, "activity_manager"

    .line 1305
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    return-void
.end method

.method public final updateBgAutoRestrictedBucketChanged()V
    .locals 4

    .line 1294
    iget-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    const-string v1, "bg_auto_restricted_bucket_on_bg_restricted"

    const/4 v2, 0x0

    const-string v3, "activity_manager"

    .line 1295
    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    .line 1299
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    if-eq v0, v1, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget-boolean p0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictedBucket:Z

    invoke-static {v0, p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mdispatchAutoRestrictedBucketFeatureFlagChanged(Lcom/android/server/am/AppRestrictionController;Z)V

    :cond_0
    return-void
.end method

.method public final updateBgLongFgsNotificationMinimalInterval()V
    .locals 4

    const-string v0, "bg_long_fgs_notification_minimal_interval"

    const-wide v1, 0x9a7ec800L

    const-string v3, "activity_manager"

    .line 1319
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgLongFgsNotificationMinIntervalMs:J

    return-void
.end method

.method public final updateBgPromptAbusiveAppToBgRestricted()V
    .locals 3

    const-string v0, "bg_prompt_abusive_apps_to_bg_restricted"

    .line 1347
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptAbusiveAppToBgRestricted:Z

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptAbusiveAppsToBgRestricted:Z

    return-void
.end method

.method public final updateBgPromptFgsOnLongRunning()V
    .locals 3

    const-string v0, "bg_prompt_fgs_on_long_running"

    const/4 v1, 0x0

    const-string v2, "activity_manager"

    .line 1340
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsOnLongRunning:Z

    return-void
.end method

.method public final updateBgPromptFgsWithNotiOnLongRunning()V
    .locals 3

    const-string v0, "bg_prompt_fgs_with_noti_on_long_running"

    const/4 v1, 0x0

    const-string v2, "activity_manager"

    .line 1333
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiOnLongRunning:Z

    return-void
.end method

.method public final updateBgPromptFgsWithNotiToBgRestricted()V
    .locals 3

    const-string v0, "bg_prompt_fgs_with_noti_to_bg_restricted"

    .line 1326
    iget-boolean v1, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mDefaultBgPromptFgsWithNotiToBgRestricted:Z

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiToBgRestricted:Z

    return-void
.end method

.method public final updateBgRestrictionExemptedPackages()V
    .locals 5

    const-string v0, "bg_restriction_exempted_packages"

    const/4 v1, 0x0

    const-string v2, "activity_manager"

    .line 1354
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1359
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    return-void

    :cond_0
    const-string v1, ","

    .line 1362
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1363
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1364
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1365
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1367
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgRestrictionExemptedPackages:Ljava/util/Set;

    return-void
.end method

.method public updateDeviceConfig()V
    .locals 0

    .line 1282
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictedBucketChanged()V

    .line 1283
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAutoRestrictAbusiveApps()V

    .line 1284
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgAbusiveNotificationMinimalInterval()V

    .line 1285
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgLongFgsNotificationMinimalInterval()V

    .line 1286
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsWithNotiToBgRestricted()V

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsWithNotiOnLongRunning()V

    .line 1288
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptFgsOnLongRunning()V

    .line 1289
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgPromptAbusiveAppToBgRestricted()V

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->updateBgRestrictionExemptedPackages()V

    return-void
.end method
