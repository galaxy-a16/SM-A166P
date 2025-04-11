.class public Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "InputMethodManagerService.java"


# instance fields
.field public mLastEnabled:Ljava/lang/String;

.field public mRegistered:Z

.field public mUserId:I

.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 1314
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1315
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 1307
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    const-string p1, ""

    .line 1308
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 10

    const-string p1, "InputMethodManagerService"

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "show_ime_with_hard_keyboard"

    .line 1365
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "accessibility_soft_keyboard_mode"

    .line 1367
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "stylus_handwriting_enabled"

    .line 1369
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "sip_keyboard_type_mouse_id_list"

    .line 1371
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1374
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3

    .line 1375
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1376
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmMenuController(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodMenuController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->updateKeyboardFromSettingsLocked()V

    goto/16 :goto_0

    .line 1377
    :cond_0
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1378
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1379
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "accessibility_soft_keyboard_mode"

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    .line 1378
    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 1381
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmVisibilityStateComputer(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->setA11yRequestNoSoftKeyboard(I)V

    .line 1383
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmVisibilityStateComputer(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getImePolicy()Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->isA11yRequestNoSoftKeyboard()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1384
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    goto :goto_0

    .line 1387
    :cond_1
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$misShowRequestedForCurrentWindow(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1388
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    const/16 p2, 0x9

    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mshowCurrentInputImplicitLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    goto :goto_0

    .line 1391
    :cond_2
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1392
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalStylusHandwritingAvailabilityCaches()V

    goto :goto_0

    .line 1394
    :cond_3
    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1395
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mbuildKeyboardTypeMouseList(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/content/Context;)V

    goto :goto_0

    .line 1399
    :cond_4
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    move-result-object p1

    .line 1400
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1401
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1404
    :cond_5
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 1406
    :cond_6
    :goto_0
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerContentObserverLocked(I)V
    .locals 5

    .line 1320
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1323
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1324
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1325
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1326
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    .line 1328
    :cond_1
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    if-eq v1, p1, :cond_2

    const-string v1, ""

    .line 1329
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 1330
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    :cond_2
    const-string v1, "default_input_method"

    .line 1332
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "enabled_input_methods"

    .line 1334
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "selected_input_method_subtype"

    .line 1336
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    .line 1338
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "accessibility_soft_keyboard_mode"

    .line 1340
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "stylus_handwriting_enabled"

    .line 1342
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1348
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$sfgetDEX_CONTENT_URI()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "touch_keyboard"

    .line 1349
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmDeXDualViewChangeObserver(Lcom/android/server/inputmethod/InputMethodManagerService;)Lcom/android/server/inputmethod/InputMethodManagerService$DexDualViewModeChangeObserver;

    move-result-object v4

    .line 1348
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "sip_keyboard_type_mouse_id_list"

    .line 1352
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x1

    .line 1356
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver{mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
