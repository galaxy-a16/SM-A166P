.class public Lcom/android/server/policy/KeyboardShortcutManager;
.super Ljava/lang/Object;
.source "KeyboardShortcutManager.java"


# static fields
.field public static final SHORT_TYPE_LIST:[I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsConsumedMeta:Z

.field public mIsTriggeredMeta:Z

.field public final mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field public final mPreloadBehaviorMap:Landroid/util/SparseArray;

.field public final mShortcutMap:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    .line 79
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyboardShortcutManager;->SHORT_TYPE_LIST:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPreloadBehaviorMap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    .line 108
    iput-object p1, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    .line 109
    iput-object p2, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    return-void
.end method


# virtual methods
.method public final getBehavior(I)Lcom/android/server/policy/KeyboardShortcutManager$Behavior;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 486
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$DefaultBehavior;

    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p1, v0, p0}, Lcom/android/server/policy/KeyboardShortcutManager$DefaultBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-object p1

    .line 483
    :cond_0
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$SettingsBehavior;

    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p1, v0, p0}, Lcom/android/server/policy/KeyboardShortcutManager$SettingsBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-object p1

    .line 480
    :cond_1
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$A11ySettingsBehavior;

    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p1, v0, p0}, Lcom/android/server/policy/KeyboardShortcutManager$A11ySettingsBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-object p1

    .line 477
    :cond_2
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$GameBoosterToggleMenuBehavior;

    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p1, v0, p0}, Lcom/android/server/policy/KeyboardShortcutManager$GameBoosterToggleMenuBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-object p1

    .line 474
    :cond_3
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;

    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p1, v0, p0}, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-object p1
.end method

.method public final getBehavior(ILjava/lang/String;)Lcom/android/server/policy/KeyboardShortcutManager$Behavior;
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const-string p1, "com.android.settings"

    .line 498
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 499
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$SettingsBehavior;

    iget-object p2, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p1, p2, p0}, Lcom/android/server/policy/KeyboardShortcutManager$SettingsBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-object p1

    .line 501
    :cond_0
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$DefaultBehavior;

    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/server/policy/KeyboardShortcutManager$DefaultBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;Ljava/lang/String;)V

    return-object p1

    .line 495
    :cond_1
    new-instance p1, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;

    iget-object p2, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p1, p2, p0}, Lcom/android/server/policy/KeyboardShortcutManager$SFinderBehavior;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V

    return-object p1
.end method

.method public final getIntent(ILandroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "KeyboardShortcutManager"

    if-nez p2, :cond_0

    const-string p0, "Intent is null"

    .line 312
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-eqz p1, :cond_3

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 318
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getTopActivity()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "META_F, Unknown top activity!"

    .line 320
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 323
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "META_F, top="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "componentname"

    .line 324
    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 328
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v0

    .line 331
    :cond_4
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    return-object p2
.end method

.method public final getPreloadBehaviorMap(I)Lcom/android/server/policy/KeyboardShortcutManager$Behavior;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPreloadBehaviorMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyboardShortcutManager;->getBehavior(I)Lcom/android/server/policy/KeyboardShortcutManager$Behavior;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getSaLoggerEventId(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/16 p0, 0x29

    if-eq p1, p0, :cond_4

    const/16 p0, 0x2c

    if-eq p1, p0, :cond_3

    const/16 p0, 0x36

    if-eq p1, p0, :cond_2

    const/16 p0, 0x2e

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2f

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "PKBD0012"

    return-object p0

    :pswitch_1
    const-string p0, "PKBD0011"

    return-object p0

    :pswitch_2
    const-string p0, "PKBD0061"

    return-object p0

    :pswitch_3
    const-string p0, "PKBD0060"

    return-object p0

    :pswitch_4
    const-string p0, "PKBD0009"

    return-object p0

    :pswitch_5
    const-string p0, "PKBD0059"

    return-object p0

    :pswitch_6
    const-string p0, "PKBD0008"

    return-object p0

    :pswitch_7
    const-string p0, "PKBD0058"

    return-object p0

    :pswitch_8
    const-string p0, "PKBD0057"

    return-object p0

    :pswitch_9
    const-string p0, "PKBD0056"

    return-object p0

    :cond_0
    const-string p0, "PKBD0065"

    return-object p0

    :cond_1
    const-string p0, "PKBD0015"

    return-object p0

    :cond_2
    const-string p0, "PKBD0021"

    return-object p0

    :cond_3
    const-string p0, "PKBD0064"

    return-object p0

    :cond_4
    const-string p0, "PKBD0062"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShortcutSettingsValue(I)Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 p1, -0x2

    .line 100
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 2

    const-string v0, "KeyboardShortcutManager"

    const-string v1, "init()"

    .line 113
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/server/policy/KeyboardShortcutManager;->preloadBehavior()V

    .line 115
    invoke-virtual {p0}, Lcom/android/server/policy/KeyboardShortcutManager;->preloadSettings()V

    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;ZI)Z
    .locals 6

    .line 144
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 145
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 146
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyboardShortcutManager;->isSupportShortcut(I)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_1

    if-nez v4, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/server/policy/KeyboardShortcutManager;->reset()V

    :cond_1
    return v3

    .line 153
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getModifiers()I

    move-result p1

    const-string v5, "KeyboardShortcutManager"

    if-eqz p2, :cond_3

    const/high16 p2, 0x10000

    .line 154
    invoke-static {p1, p2}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 155
    iput-boolean v2, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    const-string p1, "interceptKeyTi, triggered"

    .line 156
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 157
    :cond_3
    iget-boolean p1, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    if-nez p1, :cond_4

    return v3

    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 162
    iget-boolean p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    return p0

    :cond_5
    if-nez v1, :cond_8

    .line 164
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isSafeDebugInput()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "interceptKeyTi, up, triggered="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " consumed="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_6
    iput-boolean v3, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    .line 169
    iget-boolean p1, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    if-eqz p1, :cond_7

    .line 170
    iput-boolean v3, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    return v2

    :cond_7
    return v3

    .line 176
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyboardShortcutManager;->getShortcutSettingsValue(I)Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string/jumbo v1, "shortcutSetting("

    if-eqz p2, :cond_a

    .line 179
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isSafeDebugInput()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is empty"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v3

    :cond_a
    const-string p2, "None"

    .line 183
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 184
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isSafeDebugInput()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 185
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is none"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v2

    :cond_c
    const-string p2, "android.intent.category."

    .line 189
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_2

    :cond_d
    const-string p2, "android.app.role."

    .line 191
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 v2, 0x2

    goto :goto_2

    :cond_e
    const-string p2, "com.sec.android.app.launcher/com.sec.android.app.launcher.search.SearchActivity"

    .line 193
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 v2, 0x3

    goto :goto_2

    :cond_f
    const-string p2, "com.android.settings"

    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    const/16 p2, 0x25

    if-ne v0, p2, :cond_10

    const/4 v2, 0x4

    goto :goto_2

    :cond_10
    move v2, v3

    .line 199
    :goto_2
    invoke-virtual {p0, p3, v2, p1, v0}, Lcom/android/server/policy/KeyboardShortcutManager;->launchCustomizationShortcut(IILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isSupportShortcut(I)Z
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launch(II)Z
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final launch(IILjava/lang/String;)Z
    .locals 3

    .line 251
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyboardShortcutManager;->getPreloadBehaviorMap(I)Lcom/android/server/policy/KeyboardShortcutManager$Behavior;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyboardShortcutManager;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " componentName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyboardShortcutManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v0}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, p2, v1, p3}, Lcom/android/server/policy/KeyboardShortcutManager;->getIntent(ILandroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Can not launch app, intent is null"

    .line 256
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 259
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->launch(I)Z

    move-result p0

    return p0
.end method

.method public launch(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/policy/KeyboardShortcutManager;->launch(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public launchCustomizationShortcut(IILjava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "KeyboardShortcutManager"

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 265
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "launch type=category shortcutSetting="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 269
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "launch type=role shortcutSetting="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v3, 0x4

    if-ne p2, v3, :cond_2

    .line 274
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "launch type=settings shortcutSetting="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " keyCode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 281
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/KeyboardShortcutManager;->getBehavior(ILjava/lang/String;)Lcom/android/server/policy/KeyboardShortcutManager$Behavior;

    move-result-object v3

    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launch type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyboardShortcutManager;->typeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " shortcutSetting= "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {v3, p1}, Lcom/android/server/policy/KeyboardShortcutManager$Behavior;->launch(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 286
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_KEY_SA_LOGGING:Z

    if-eqz p1, :cond_3

    .line 287
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "det"

    .line 288
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {p0, p4}, Lcom/android/server/policy/KeyboardShortcutManager;->getSaLoggerEventId(I)Ljava/lang/String;

    move-result-object p2

    .line 290
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 291
    invoke-static {p2, p1}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 294
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    const-string p0, "consumed"

    .line 295
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    return v0
.end method

.method public final preloadBehavior()V
    .locals 6

    .line 119
    sget-object v0, Lcom/android/server/policy/KeyboardShortcutManager;->SHORT_TYPE_LIST:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 120
    iget-object v4, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mPreloadBehaviorMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v3}, Lcom/android/server/policy/KeyboardShortcutManager;->getBehavior(I)Lcom/android/server/policy/KeyboardShortcutManager$Behavior;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final preloadSettings()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_shortcuts_command_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_shortcuts_command_b"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_shortcuts_command_c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_shortcuts_command_d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_shortcuts_command_e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_shortcuts_command_f"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_shortcuts_command_h"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_shortcuts_command_i"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_shortcuts_command_j"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_shortcuts_command_k"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_shortcuts_command_m"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_shortcuts_command_p"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_shortcuts_command_r"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app_shortcuts_command_s"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object p0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mShortcutMap:Ljava/util/HashMap;

    const/16 v0, 0x36

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "app_shortcuts_command_z"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsTriggeredMeta:Z

    .line 467
    iput-boolean v0, p0, Lcom/android/server/policy/KeyboardShortcutManager;->mIsConsumedMeta:Z

    return-void
.end method

.method public final typeToString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    .line 519
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "META_Z"

    return-object p0

    :cond_1
    const-string p0, "META_U"

    return-object p0

    :cond_2
    const-string p0, "META_G"

    return-object p0

    :cond_3
    const-string p0, "META_F"

    return-object p0

    :cond_4
    const-string p0, "DEFAULT"

    return-object p0
.end method
