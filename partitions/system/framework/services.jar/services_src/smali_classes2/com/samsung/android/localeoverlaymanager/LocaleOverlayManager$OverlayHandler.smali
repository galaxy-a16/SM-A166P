.class public Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;
.super Landroid/os/Handler;
.source "LocaleOverlayManager.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Landroid/os/Looper;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    .line 202
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 211
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmInProgress(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmInProgress(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 215
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 216
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const-wide/16 v1, 0x64

    .line 217
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fputmInProgress(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Z)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetprogressHandler(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetprogressResetRunnable(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetprogressHandler(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetprogressResetRunnable(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v2, "Package is not supported for Locale Overlays: "

    const-string v3, "config_locale_list"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 359
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0, v4}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fputmInProgress(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Z)V

    .line 360
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: Message not known - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 289
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_c

    .line 290
    check-cast p1, Landroid/os/Bundle;

    .line 292
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v1, "perAppPackageName"

    .line 294
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 301
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v0, p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mhasZippedOverlaysPackage(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->installLocalesForPackages(Ljava/util/Set;Ljava/util/Set;)V

    goto/16 :goto_2

    .line 307
    :cond_2
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0, p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mcleanLocaleOverlayForDisable(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 297
    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_PERAPP_SUPPORT: Ignored message. currentLocales = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", packageName = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mhandleTaskComplete(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)V

    return-void

    .line 321
    :pswitch_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/Utils;->getSystemLocales()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 322
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: MESSAGE_JOB_ENSUREOVERLAYS. Current locales = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->ensureOverlaysEnabled(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 324
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mhandleTaskComplete(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)V

    goto/16 :goto_2

    .line 242
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mhandleTaskComplete(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)V

    goto/16 :goto_2

    .line 233
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    .line 234
    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v0, "safeMode"

    .line 235
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v0, "startCleanUpOverlay"

    .line 236
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_4
    move p1, v4

    .line 238
    :goto_1
    invoke-virtual {p0, v4, p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->init(ZZ)V

    goto/16 :goto_2

    .line 329
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_c

    .line 330
    check-cast p1, Landroid/os/Bundle;

    .line 332
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    const-string/jumbo v3, "token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fputmToken(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;I)V

    .line 334
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    const-string v3, "added_package"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fputmUpdatedPackage(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: MESSAGE_PARSE_SINGLE_PACKAGE. PackageName = ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v3}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmUpdatedPackage(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmUpdatedPackage(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    .line 337
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mhandleTaskComplete(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)V

    return-void

    .line 340
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmContext(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 341
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmUpdatedPackage(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "app_in_progress"

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 342
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->setPackageUpdateTask(Z)V

    .line 344
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmUpdatedPackage(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mhasZippedOverlaysPackage(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 345
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmOverlayManager(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    move-result-object p1

    if-nez p1, :cond_6

    .line 346
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$minitOverlayManager(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)V

    .line 348
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmOverlayManager(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 349
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmOverlayManager(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Lcom/samsung/android/localeoverlaymanager/OMSHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmUpdatedPackage(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/Utils;->getCurrentUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/localeoverlaymanager/OMSHelper;->updatePackageCache(Ljava/lang/String;I)V

    .line 351
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmUpdatedPackage(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->installLocalesForPackages(Ljava/util/Set;)V

    goto/16 :goto_2

    .line 353
    :cond_8
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmUpdatedPackage(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmUpdatedPackage(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mcleanLocaleOverlayForDisable(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 247
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_9

    .line 251
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Locale list from config is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mhandleTaskComplete(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)V

    return-void

    .line 257
    :cond_9
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/Utils;->getCurrentUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getLocalesForUser(I)Ljava/util/Set;

    move-result-object v0

    .line 258
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locale list from config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " old list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 262
    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 263
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AddedLocales list from config - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 267
    invoke-interface {v3, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 268
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeletedLocales list from config - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 271
    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 272
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/Utils;->getCurrentUserId()I

    move-result v4

    invoke-static {v4, v0}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->setLocalesForUser(ILjava/util/Set;)V

    .line 274
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 277
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->ensureOverlaysEnabled(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 278
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mhandleTaskComplete(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)V

    :cond_a
    return-void

    .line 283
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmContext(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/PreferenceUtils;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 284
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "locale_in_progress"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 285
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->installLocales(Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_2

    .line 315
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v0, v4}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fputmInProgress(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Z)V

    .line 316
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_c

    .line 317
    invoke-virtual {p0, p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->handlePendingAction(Landroid/os/Message;)V

    :cond_c
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handlePendingAction(Landroid/os/Message;)V
    .locals 8

    .line 416
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fputmRetryCount(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;I)V

    .line 417
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v0, "pending_action"

    .line 418
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "userId"

    .line 419
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/localeoverlaymanager/Utils;->setCurrentUserId(I)V

    .line 420
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_PENDING_ACTION --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/localeoverlaymanager/LogWriter;->logDebugInfoAndLogcat(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 422
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "handlePendingAction: Pending action is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 425
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v1, v7

    goto :goto_1

    :sswitch_0
    const-string v1, "com.samsung.android.localeoverlaymanager.action.SETUP_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "com.samsung.android.localeoverlaymanager.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v1, "com.samsung.android.localeoverlaymanager.action.MSG_HANDLE_PER_APP_LOCALE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v6

    goto :goto_1

    :sswitch_4
    const-string v1, "init_on_boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v2, "com.samsung.android.localeoverlaymanager.action.JOB_SCHEDULED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 445
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 428
    :pswitch_1
    invoke-static {v0, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 430
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 434
    :pswitch_2
    invoke-static {v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 435
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 436
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x7

    .line 452
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 453
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 440
    :pswitch_4
    invoke-static {v0, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 441
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 448
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;

    move-result-object p0

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x659393d6 -> :sswitch_5
        -0x3f3b4add -> :sswitch_4
        -0x2fe7d14e -> :sswitch_3
        -0x122164c -> :sswitch_2
        0x51d7946 -> :sswitch_1
        0x7faafefc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasAnyMessageOrCallbacks()Z
    .locals 2

    const/4 v0, 0x1

    .line 401
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 402
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x7

    .line 403
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 404
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    .line 405
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    .line 406
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x6

    .line 407
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final init(ZZ)V
    .locals 5

    .line 370
    invoke-static {}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mparseTargetApks(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)V

    .line 373
    new-instance v0, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer;

    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer;-><init>(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)V

    .line 376
    iget-object v1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fputmIsCleanupInProgress(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 379
    iget-object p1, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmContext(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer;->cleanupOverlayDir(Landroid/content/Context;)V

    move p1, v1

    goto :goto_0

    .line 382
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetprogressHandler(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Landroid/os/Handler;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetprogressResetRunnable(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetprogressHandler(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Landroid/os/Handler;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetprogressResetRunnable(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 385
    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmLocaleOverlayTargetApks(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Ljava/util/Set;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fgetmContext(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, p2, v2, p1}, Lcom/samsung/android/localeoverlaymanager/OnBootInitializer;->updateOverlays(Ljava/util/Set;Landroid/content/Context;Z)Z

    move-result p1

    .line 386
    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mcleanLocaleOverlayForDisable(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Ljava/lang/String;)V

    .line 388
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p2, v1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$fputmIsCleanupInProgress(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;Z)V

    if-nez p1, :cond_1

    .line 391
    iget-object p0, p0, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager$OverlayHandler;->this$0:Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;

    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;->-$$Nest$mhandleTaskComplete(Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManager;)V

    :cond_1
    return-void
.end method
