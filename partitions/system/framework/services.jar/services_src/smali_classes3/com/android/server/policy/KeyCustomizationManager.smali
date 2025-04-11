.class public Lcom/android/server/policy/KeyCustomizationManager;
.super Ljava/lang/Object;
.source "KeyCustomizationManager.java"


# instance fields
.field public defaultLongPressTimeout:J

.field public final mContext:Landroid/content/Context;

.field public mFillInIntent:Landroid/content/Intent;

.field public mHandler:Landroid/os/Handler;

.field public mIsCalledOpenDictationXCoverTop:Z

.field public mIsKeyLongConsumed:Z

.field public mIsKeyLongPressed:Z

.field public mIsTopKeyOnLockScreen:Z

.field public mIsXCoverKeyOnLockScreen:Z

.field public final mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public static synthetic $r8$lambda$euKVb5Ix6XpbEucqhWDpskD4ATo(Lcom/android/server/policy/KeyCustomizationManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/policy/KeyCustomizationManager;->lambda$launchXCoverTopDedicatedAction$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 800
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    .line 801
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    .line 1143
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsXCoverKeyOnLockScreen:Z

    .line 1144
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsTopKeyOnLockScreen:Z

    const/4 v1, 0x0

    .line 1335
    iput-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1346
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    .line 121
    iput-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 123
    new-instance p2, Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-direct {p2, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 1895
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ACTION_BLOCK_KEY_EVENT"

    return-object p0

    :cond_1
    const-string p0, "ACTION_START_SERVICE"

    return-object p0

    :cond_2
    const-string p0, "ACTION_SEND_BROADCAST"

    return-object p0

    :cond_3
    const-string p0, "ACTION_START_ACTIVITY"

    return-object p0
.end method

.method public static idToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_9

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_8

    const/16 v0, 0x32

    if-eq p0, v0, :cond_7

    const/16 v0, 0x3b7

    if-eq p0, v0, :cond_6

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_5

    const/16 v0, 0x44c

    if-eq p0, v0, :cond_4

    const/16 v0, 0x44f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x450

    if-eq p0, v0, :cond_2

    const/16 v0, 0x452

    if-eq p0, v0, :cond_1

    const/16 v0, 0x453

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1928
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "ID_GENERAL_APPLICATION"

    return-object p0

    :pswitch_1
    const-string p0, "ID_APPLICATION_UI_TV_MODE"

    return-object p0

    :pswitch_2
    const-string p0, "ID_APPLICATION_UI_CAMERA"

    return-object p0

    :cond_0
    const-string p0, "ID_SETTING_UI_MOUSE_BUTTON"

    return-object p0

    :cond_1
    const-string p0, "ID_SETTING_UI_ONE_HAND_MODE"

    return-object p0

    :cond_2
    const-string p0, "ID_SETTING_UI_SIDE_KEY"

    return-object p0

    :cond_3
    const-string p0, "ID_SETTING_UI_XCOVER_TOP"

    return-object p0

    :cond_4
    const-string p0, "ID_SETTING_UI"

    return-object p0

    :cond_5
    const-string p0, "ID_DEFAULT"

    return-object p0

    :cond_6
    const-string p0, "ID_SETTING_UI_B2B_DELTA"

    return-object p0

    :cond_7
    const-string p0, "ID_KNOX_LEGACY"

    return-object p0

    :cond_8
    const-string p0, "ID_KNOX_V2"

    return-object p0

    :cond_9
    const-string p0, "ID_KNOX_MDM"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$launchXCoverTopDedicatedAction$0()V
    .locals 1

    .line 1375
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method public static pressToString(I)Ljava/lang/String;
    .locals 1

    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_0

    const-string p0, "KEY_PRESS_SINGLE"

    return-object p0

    :cond_0
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    const-string p0, "KEY_PRESS_LONG"

    return-object p0

    :cond_1
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_2

    const-string p0, "KEY_PRESS_DOUBLE"

    return-object p0

    :cond_2
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    const-string p0, "KEY_PRESS_TRIPLE"

    return-object p0

    :cond_3
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_4

    const-string p0, "KEY_PRESS_QUADRUPLE"

    return-object p0

    :cond_4
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_5

    const-string p0, "KEY_PRESS_QUINTUPLE"

    return-object p0

    .line 1881
    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canDispatchXCoverTopKeyEvent(I)Z
    .locals 3

    .line 1165
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdThanDefaultWithXCoverTopPress(I)Z

    move-result v0

    const-string v2, "KeyCustomizationManager"

    if-eqz v0, :cond_1

    const-string p0, "Allow XCover or Top key event dispatching even though screen is turned off by knox policy."

    .line 1170
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1174
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopIdWithXCoverTopPress(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "After screen is turned off, disallow XCover or Top key event dispatching, because single or long press has a ID_SETTING_UI_XCOVER_TOP."

    .line 1175
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public final checkValidInputKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .locals 12

    if-eqz p1, :cond_22

    .line 165
    iget v0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 166
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 167
    iget v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    .line 168
    iget v3, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const/16 v4, 0xa

    const-string v5, " are not supported in the requested keyCode("

    const/4 v6, 0x1

    const-string v7, " and "

    const-string v8, ")."

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v1, v10, :cond_2

    if-eq v1, v9, :cond_4

    const/16 v11, 0x4f

    if-eq v1, v11, :cond_6

    const/16 v11, 0xbb

    if-eq v1, v11, :cond_4

    const/16 v11, 0x3f7

    if-eq v1, v11, :cond_6

    const/16 v11, 0x437

    if-eq v1, v11, :cond_6

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    and-int/lit8 v5, v0, 0x3

    if-eqz v5, :cond_0

    if-ne v2, v9, :cond_0

    if-ne v3, v4, :cond_0

    goto/16 :goto_1

    .line 214
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requested keyCode("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") was wrong. The keyCode is not supported."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    and-int/lit8 v5, v0, 0x3

    if-eqz v5, :cond_1

    and-int/lit8 v5, v0, 0x4

    if-nez v5, :cond_1

    and-int/lit8 v5, v0, 0x8

    if-nez v5, :cond_1

    goto/16 :goto_1

    .line 202
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not supported in the requested keyCode("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_2
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_SEARCLE_HOME_LONG:Z

    if-eqz v11, :cond_4

    and-int/lit8 v11, v0, 0x4

    if-eqz v11, :cond_4

    .line 177
    invoke-virtual {p0, v3}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_0

    .line 178
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {v3}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    :pswitch_1
    and-int/lit8 v11, v0, 0x3

    if-eqz v11, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v10, :cond_5

    goto :goto_1

    .line 189
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    const/16 v5, 0x44c

    const/16 v8, 0x453

    const-string/jumbo v11, "requested "

    if-nez v2, :cond_8

    if-lt v3, v5, :cond_7

    if-gt v3, v8, :cond_7

    goto :goto_2

    .line 221
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {v3}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was wrong."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-eq v2, v6, :cond_a

    const/4 v6, 0x2

    if-eq v2, v6, :cond_a

    if-eq v2, v10, :cond_a

    if-ne v2, v9, :cond_9

    goto :goto_2

    .line 232
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was wrong. The action is not supported."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 237
    :cond_a
    :goto_2
    iget v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    if-eqz v2, :cond_c

    const/4 v6, -0x1

    if-ne v2, v6, :cond_b

    goto :goto_3

    .line 239
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "requested dispatching("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") was wrong."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    :goto_3
    const/16 v2, 0x7d3

    if-eq v3, v4, :cond_f

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_f

    const/16 v4, 0x32

    if-eq v3, v4, :cond_f

    const/16 v4, 0x3b7

    if-eq v3, v4, :cond_f

    if-lt v3, v5, :cond_d

    if-le v3, v8, :cond_f

    :cond_d
    const/16 v4, 0x7d0

    if-lt v3, v4, :cond_e

    if-gt v3, v2, :cond_e

    goto :goto_4

    .line 247
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was wrong. The id is not supported."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 251
    :cond_f
    :goto_4
    iget-object v4, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    if-ne v3, v2, :cond_11

    .line 252
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_5

    .line 253
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "requested ownerPackage was empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_5
    and-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_13

    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_13

    and-int/lit8 v4, v0, 0x8

    if-nez v4, :cond_13

    and-int/lit8 v4, v0, 0x10

    if-nez v4, :cond_13

    and-int/lit8 v4, v0, 0x20

    if-nez v4, :cond_13

    and-int/lit8 v4, v0, 0x40

    if-eqz v4, :cond_12

    goto :goto_6

    .line 262
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was wrong. The press is not supported."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 266
    :cond_13
    :goto_6
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_TRIPLE_PRESS_POWER_LAUNCH_PANIC_CALL:Z

    const/16 v5, 0x1a

    if-eqz v4, :cond_15

    if-ne v1, v5, :cond_15

    and-int/lit8 v4, v0, 0x10

    if-nez v4, :cond_14

    goto :goto_7

    .line 268
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Triple press of Power key is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_15
    :goto_7
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_QUINTUPLE_PRESS_POWER_EMERGENCY_SOS:Z

    if-nez v4, :cond_16

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_TRIPLE_PRESS_POWER_LAUNCH_PANIC_CALL:Z

    if-eqz v4, :cond_18

    :cond_16
    if-ne v1, v5, :cond_18

    and-int/lit8 v1, v0, 0x40

    if-nez v1, :cond_17

    goto :goto_8

    .line 273
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Quintuple press of Power key is not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_8
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_19

    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_1a

    :cond_19
    if-eq v3, v8, :cond_21

    .line 283
    :cond_1a
    iget-wide v3, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1c

    .line 284
    iget-wide v8, p0, Lcom/android/server/policy/KeyCustomizationManager;->defaultLongPressTimeout:J

    cmp-long p0, v3, v8

    if-ltz p0, :cond_1b

    goto :goto_9

    .line 285
    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The longPressTimeout was wrong."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_9
    if-lez v7, :cond_1e

    if-eqz v1, :cond_1d

    goto :goto_a

    .line 288
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The longPressTimeout only supported with long press"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_1e
    :goto_a
    iget-wide p0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    cmp-long p0, p0, v5

    if-eqz p0, :cond_20

    if-nez v2, :cond_1f

    if-nez v1, :cond_1f

    goto :goto_b

    .line 295
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The multiPressTimeout is not supported with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {v0}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_b
    return-void

    .line 279
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The long or double press is not supported with mouse button id."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "KeyCustomizationInfo is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x445
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public clearKeyCustomizationInfoByAction(III)V
    .locals 5

    .line 460
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isSafeDebugInput()Z

    move-result v0

    const-string v1, " "

    const-string v2, " keyCode="

    const-string v3, "KeyCustomizationManager"

    if-eqz v0, :cond_0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearKeyCustomizationInfoByAction, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-static {p3}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->clearByAction(III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearKeyCustomizationInfoByAction, Requested info is empty. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 467
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 472
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V

    return-void
.end method

.method public clearKeyCustomizationInfoByKeyCode(II)V
    .locals 4

    .line 429
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isSafeDebugInput()Z

    move-result v0

    const-string v1, " keyCode="

    const-string v2, "KeyCustomizationManager"

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearKeyCustomizationInfoByKeyCode, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->clearByKeyCode(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearKeyCustomizationInfoByKeyCode, Requested info is empty. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 435
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 p1, 0x1a

    if-ne p2, p1, :cond_4

    .line 441
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget v2, p1, v1

    .line 442
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_TRIPLE_PRESS_POWER_LAUNCH_PANIC_CALL:Z

    if-eqz v3, :cond_2

    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_3

    goto :goto_1

    .line 449
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_4
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    .line 455
    :cond_5
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->initLongPressTimeout(I)V

    .line 456
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->initMultiPressTimeout(I)V

    return-void
.end method

.method public clearKeyCustomizationInfoByPackage(Ljava/lang/String;)V
    .locals 7

    .line 404
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isSafeDebugInput()Z

    move-result v0

    const-string v1, "KeyCustomizationManager"

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearKeyCustomizationInfoByPackage packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->clearByPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 412
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearKeyCustomizationInfoByPackage, Requested info is empty. packageName="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 417
    :cond_2
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget v3, p1, v2

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_3

    .line 419
    sget-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->EXTERNAL_SUPPORTED_BEHAVIOR_PRESS_TYPE:[I

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    aget v6, v3, v5

    .line 420
    invoke-virtual {p0, v6}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 423
    :cond_3
    iget-object v4, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v4, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;)I
    .locals 1

    const/4 v0, 0x0

    .line 954
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I

    move-result p0

    return p0
.end method

.method public dispatchKeyCustomizationKeyEvent(Landroid/view/KeyEvent;Z)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 958
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 959
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 960
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    .line 961
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const/4 v8, 0x3

    .line 962
    invoke-virtual {v0, v8, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v9

    const/4 v10, 0x4

    .line 963
    invoke-virtual {v0, v10, v2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v11

    const/4 v12, -0x1

    if-eqz p2, :cond_2

    if-eq v11, v12, :cond_1

    move v13, v7

    goto :goto_1

    :cond_1
    move v13, v6

    goto :goto_1

    :cond_2
    move/from16 v13, p2

    .line 968
    :goto_1
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v14

    const-string v15, "KeyCustomizationManager"

    if-eqz v14, :cond_3

    .line 969
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dispatchKeyEvent: keyCode="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " down="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " repeatCount="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " isLongPress="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " pressAction="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    invoke-static {v9}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " longPressAction="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-static {v11}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " forceDispatching="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 969
    invoke-static {v15, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_3
    invoke-virtual {v0, v11, v9}, Lcom/android/server/policy/KeyCustomizationManager;->shouldLaunchLongOrShortPressAction(II)Z

    move-result v10

    const/4 v14, 0x2

    if-nez v10, :cond_5

    .line 977
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "dispatchKeyEvent - default, there is no action, NEEDED_NEXT_STEP"

    .line 978
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v14

    :cond_5
    if-eqz v5, :cond_14

    if-nez v3, :cond_a

    .line 985
    iput-boolean v6, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    .line 986
    iput-boolean v6, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    .line 989
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v3, :cond_7

    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->startMCPTTServiceIfNeeded(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 990
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "dispatchKeyEvent:down - launch MCPTT, NO_NEED_NEXT_STEP"

    .line 991
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v7

    .line 997
    :cond_7
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v3, :cond_8

    .line 998
    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(ILandroid/view/KeyEvent;)V

    :cond_8
    if-ne v9, v14, :cond_a

    .line 1001
    invoke-virtual {v0, v1, v8}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Landroid/view/KeyEvent;I)I

    move-result v3

    if-ne v3, v12, :cond_a

    .line 1002
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "dispatchKeyEvent:down - sendBroadcast, NO_NEED_NEXT_STEP"

    .line 1003
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v7

    :cond_a
    if-eqz v4, :cond_12

    .line 1009
    iput-boolean v7, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    .line 1010
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v3, :cond_e

    const/4 v3, 0x4

    .line 1011
    invoke-virtual {v0, v3, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopKeyAndId(II)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1012
    invoke-virtual {v0, v2, v6}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverLongActionIfNeeded(IZ)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1013
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "dispatchKeyEvent:longPress - XCoverTopKey Action, NO_NEED_NEXT_STEP"

    .line 1014
    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_b
    iput-boolean v7, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    return v7

    .line 1020
    :cond_c
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "dispatchKeyEvent:longPress - XCoverTopKey Action, NEEDED_NEXT_STEP"

    .line 1021
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v14

    .line 1027
    :cond_e
    invoke-virtual {v0, v11, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(ILandroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1028
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "dispatchKeyEvent:longPress - launch Action, NO_NEED_NEXT_STEP"

    .line 1029
    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_f
    iput-boolean v7, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    return v7

    .line 1035
    :cond_10
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "dispatchKeyEvent:longPress, NEEDED_ONLY_LONG_PRESS_STEP"

    .line 1036
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return v8

    .line 1041
    :cond_12
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v1, :cond_22

    invoke-virtual {v0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopKeyAndId(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1042
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "dispatchKeyEvent:down - XCoverTopKey Action, NEEDED_NEXT_STEP"

    .line 1043
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return v14

    .line 1049
    :cond_14
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_XCOVER_AND_TOP_KEY:Z

    if-eqz v3, :cond_15

    .line 1050
    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->prepareVoiceToTextMessage(ILandroid/view/KeyEvent;)V

    :cond_15
    if-ne v9, v14, :cond_17

    .line 1052
    iget-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    invoke-virtual {v0, v1, v8, v3}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Landroid/view/KeyEvent;IZ)I

    move-result v3

    if-ne v3, v12, :cond_17

    .line 1054
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "dispatchKeyEvent:up - sendBroadcast, NO_NEED_NEXT_STEP"

    .line 1055
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return v7

    .line 1061
    :cond_17
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_ACTIVE_OR_XCOVER_KEY:Z

    if-eqz v3, :cond_1d

    .line 1062
    iget-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    if-nez v3, :cond_1b

    .line 1063
    invoke-virtual {v0, v8, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopKeyAndId(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1064
    invoke-virtual {v0, v2, v6}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverPressActionIfNeeded(IZ)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1065
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "dispatchKeyEvent:up - XCoverTopKey Action, NO_NEED_NEXT_STEP"

    .line 1066
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return v7

    .line 1071
    :cond_19
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "dispatchKeyEvent:up - XCoverTopKey Action, NEEDED_NEXT_STEP"

    .line 1072
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return v14

    .line 1078
    :cond_1b
    iget-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    if-nez v3, :cond_1d

    invoke-virtual {v0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopKeyAndId(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1079
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "dispatchKeyEvent:up - XCoverTopKey Action, No longPress consumed, NEEDED_NEXT_STEP"

    .line 1080
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return v14

    .line 1087
    :cond_1d
    iget-boolean v3, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongPressed:Z

    if-nez v3, :cond_1e

    .line 1088
    invoke-virtual {v0, v9, v1, v2, v13}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressAction(ILandroid/view/KeyEvent;IZ)Z

    goto :goto_2

    .line 1091
    :cond_1e
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v3, :cond_20

    .line 1092
    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->startMCPTTServiceIfNeeded(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1093
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "dispatchKeyEvent:up - launch MCPTT, NO_NEED_NEXT_STEP"

    .line 1094
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return v7

    .line 1100
    :cond_20
    iget-boolean v0, v0, Lcom/android/server/policy/KeyCustomizationManager;->mIsKeyLongConsumed:Z

    if-eqz v0, :cond_22

    .line 1101
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "dispatchKeyEvent:up - longPress, NO_NEED_NEXT_STEP"

    .line 1102
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return v7

    :cond_22
    :goto_2
    if-eq v9, v7, :cond_25

    if-eq v9, v8, :cond_25

    if-eqz v13, :cond_23

    goto :goto_3

    .line 1118
    :cond_23
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "dispatchKeyEvent - default, NEEDED_NEXT_STEP"

    .line 1119
    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return v14

    .line 1111
    :cond_25
    :goto_3
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isDebugInput()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_26

    const-string v1, "down"

    goto :goto_4

    :cond_26
    const-string/jumbo v1, "up"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - forceDispatching or press action, NO_NEED_NEXT_STEP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return v7
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    .line 1856
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "KeyCustomization info state: "

    .line 1857
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1858
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1859
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getBackupKeyCustomizationInfoList()Ljava/util/List;
    .locals 0

    .line 1534
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getBackupKeyCustomizationInfoList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultIntentForKnoxId(ILandroid/view/KeyEvent;ZZZ)Landroid/content/Intent;
    .locals 3

    .line 1605
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1609
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    .line 1610
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 1611
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    move v0, v1

    .line 1614
    :cond_2
    new-instance p2, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.HARD_KEY_REPORT"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 1615
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.extra.KEY_CODE"

    .line 1616
    invoke-virtual {p2, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    const/16 v1, 0x8

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    if-nez p1, :cond_7

    if-eqz p5, :cond_6

    const-string p0, "com.samsung.android.knox.intent.extra.EXTRA_REPORT_TYPE_NEW_LONG_UP"

    .line 1627
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    const/4 v1, 0x2

    goto :goto_1

    :cond_7
    const/4 v1, -0x1

    :goto_1
    const-string p0, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE_NEW"

    .line 1630
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p2
.end method

.method public final getEventId(II)Ljava/lang/String;
    .locals 0

    .line 0
    const/16 p0, 0x3f7

    if-eq p2, p0, :cond_2

    const/16 p0, 0x437

    if-eq p2, p0, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 p0, p1, 0x3

    if-eqz p0, :cond_1

    const-string p0, "HWB1107"

    return-object p0

    :cond_1
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_4

    const-string p0, "HWB1112"

    return-object p0

    :cond_2
    and-int/lit8 p0, p1, 0x3

    if-eqz p0, :cond_3

    const-string p0, "HWB1101"

    return-object p0

    :cond_3
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_4

    const-string p0, "HWB1106"

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHotKeyComponentName(I)Landroid/content/ComponentName;
    .locals 0

    .line 1511
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getHotKeyComponentName(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyAction(I)Ljava/lang/String;
    .locals 0

    .line 0
    and-int/lit8 p0, p1, 0x3

    if-eqz p0, :cond_0

    const-string/jumbo p0, "press"

    return-object p0

    :cond_0
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_1

    const-string p0, "long"

    return-object p0

    :cond_1
    and-int/lit8 p0, p1, 0x8

    if-eqz p0, :cond_2

    const-string p0, "double"

    return-object p0

    :cond_2
    and-int/lit8 p0, p1, 0x10

    if-eqz p0, :cond_3

    const-string/jumbo p0, "triple"

    return-object p0

    :cond_3
    and-int/lit8 p0, p1, 0x20

    if-eqz p0, :cond_4

    const-string/jumbo p0, "quadruple"

    return-object p0

    :cond_4
    and-int/lit8 p0, p1, 0x40

    if-eqz p0, :cond_5

    const-string/jumbo p0, "quintuple"

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyCustomizationInfo(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getKeyCustomizationInfoByPackage(Ljava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 1

    .line 504
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/16 v0, 0x7d3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(ILjava/lang/String;II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .line 1337
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1341
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public getLastAction(II)I
    .locals 0

    .line 519
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 520
    :cond_0
    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    :goto_0
    return p0
.end method

.method public getLastComponentName(II)Landroid/content/ComponentName;
    .locals 0

    .line 530
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 531
    iget-object p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    .line 532
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastId(II)I
    .locals 0

    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 525
    :cond_0
    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    :goto_0
    return p0
.end method

.method public getLastIntentClone(II)Landroid/content/Intent;
    .locals 0

    .line 539
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 540
    iget-object p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz p0, :cond_0

    .line 541
    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .locals 0

    .line 510
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getLastLongPressTimeout(II)J
    .locals 0

    .line 547
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 548
    :cond_0
    iget-wide p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    :goto_0
    return-wide p0
.end method

.method public getLastMultiPressTimeout(II)J
    .locals 0

    .line 552
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 553
    :cond_0
    iget-wide p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    :goto_0
    return-wide p0
.end method

.method public final getMaximumMultiPressTimeout(I)J
    .locals 8

    .line 594
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget v5, v0, v4

    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_0

    goto :goto_1

    .line 598
    :cond_0
    invoke-virtual {p0, v5, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastMultiPressTimeout(II)J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_1

    move-wide v2, v5

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method

.method public getMultiPressTimeout(III)J
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationInfoManager;->get(III)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 515
    :cond_0
    iget-wide p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    :goto_0
    return-wide p0
.end method

.method public hasB2BDedicatedPower()Z
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0x1a

    .line 1465
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 v0, 0x3b7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasDoubleCameraId(I)Z
    .locals 1

    const/16 v0, 0x8

    .line 1477
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 p1, 0x7d1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasDoublePowerTvModeId()Z
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x1a

    .line 1483
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 v0, 0x7d2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasHigherIdThanDefaultWithXCoverTopPress(I)Z
    .locals 5

    .line 1183
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 1184
    invoke-virtual {p0, v4, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result v4

    .line 1185
    invoke-virtual {p0, v4}, Lcom/android/server/policy/KeyCustomizationManager;->isHigherIdThanDefault(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public hasHigherIdWithAllPress(II)Z
    .locals 8

    .line 1556
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ge v0, v1, :cond_5

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 1562
    :cond_0
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    array-length v3, v1

    const/16 v4, 0x7d3

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_4

    aget v6, v1, v5

    if-ne v6, p1, :cond_1

    goto :goto_1

    .line 1566
    :cond_1
    iget-object v7, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v7, v6, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 1570
    :cond_2
    iget v6, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    if-le v4, v6, :cond_3

    move v4, v6

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-ge v4, v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    :goto_2
    return v2
.end method

.method public final hasHigherIdWithOppositePress(II)Z
    .locals 2

    .line 1589
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1593
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result v0

    .line 1594
    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyCustomizationManager;->isHigherIdThanDefault(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1595
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasHigherIdInOppositePress, press="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " keyCode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " id="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyCustomizationManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public hasLastInfo(II)Z
    .locals 0

    .line 557
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasOneHandModeId()Z
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x3

    .line 1489
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 v0, 0x452

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasOwnerPackage(Ljava/lang/String;)Z
    .locals 1

    .line 394
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 397
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->hasOwnerPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasSideKeyDoublePressId()Z
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x1a

    .line 1471
    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 v0, 0x450

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasXCoverTopId(II)Z
    .locals 0

    .line 1202
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastId(II)I

    move-result p0

    const/16 p1, 0x44f

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasXCoverTopIdWithXCoverTopPress(I)Z
    .locals 5

    .line 1193
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 1194
    invoke-virtual {p0, v4, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final hasXCoverTopKeyAndId(I)Z
    .locals 1

    .line 1151
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1154
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopIdWithXCoverTopPress(I)Z

    move-result p0

    return p0
.end method

.method public final hasXCoverTopKeyAndId(II)Z
    .locals 1

    .line 1158
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1161
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->hasXCoverTopId(II)Z

    move-result p0

    return p0
.end method

.method public init()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->init(IZ)V

    .line 128
    sget-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 129
    invoke-virtual {p0, v3}, Lcom/android/server/policy/KeyCustomizationManager;->initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->getFillInIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mFillInIntent:Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->defaultLongPressTimeout:J

    return-void
.end method

.method public final initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V
    .locals 11

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    .line 142
    :cond_0
    sget-object v1, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    array-length v2, v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    :goto_0
    if-ge v5, v2, :cond_4

    aget v8, v1, v5

    if-ne p1, v0, :cond_1

    .line 144
    invoke-virtual {p0, v8}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    :cond_1
    and-int/lit8 v9, v8, 0x4

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    .line 147
    invoke-virtual {p0, v8, p1, v9}, Lcom/android/server/policy/KeyCustomizationManager;->updateLongPressTimeoutIfNeeded(IIZ)V

    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {p0, v8, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastMultiPressTimeout(II)J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_3

    move-wide v6, v8

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    cmp-long v0, v6, v3

    if-eqz v0, :cond_5

    .line 156
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/policy/SingleKeyGestureDetector;->setMultiPressTimeout(IJ)V

    :cond_5
    return-void
.end method

.method public final isAllowHandleDispatching(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/16 p0, 0x4f

    if-eq p1, p0, :cond_0

    const/16 p0, 0x3f7

    if-eq p1, p0, :cond_0

    const/16 p0, 0x437

    if-eq p1, p0, :cond_0

    const/16 p0, 0x18

    if-eq p1, p0, :cond_0

    const/16 p0, 0x19

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isBlockedDispatchingByKnoxPolicy(IZILandroid/content/Intent;I)Z
    .locals 1

    .line 1794
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x3f7

    if-eq p1, p5, :cond_1

    const/16 p1, 0x437

    if-eq p1, p5, :cond_1

    const/16 p1, 0x4f

    if-eq p1, p5, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    if-nez p2, :cond_2

    .line 1802
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p5

    invoke-virtual {p0, v0, p5}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 1803
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p5

    invoke-virtual {p0, v0, p5}, Lcom/android/server/policy/KeyCustomizationManager;->isBlockedKey(ZLandroid/os/Bundle;)Z

    move-result p5

    if-eqz p5, :cond_2

    return p1

    :cond_2
    if-eqz p2, :cond_3

    if-nez p3, :cond_3

    .line 1809
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1810
    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->isBlockedKey(ZLandroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, p1

    :cond_3
    return v0
.end method

.method public final isBlockedKey(ZLandroid/os/Bundle;)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "blockedStateOnKeyedDown"

    goto :goto_0

    :cond_1
    const-string p0, "blockedStateOnKeyedUp"

    .line 1789
    :goto_0
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isForceBlockDispatchingLongByKnoxPolicy(III)Z
    .locals 0

    .line 1814
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result p0

    if-eqz p0, :cond_1

    and-int/lit8 p0, p2, 0x4

    if-eqz p0, :cond_1

    const/16 p0, 0xbb

    if-eq p3, p0, :cond_0

    const/4 p0, 0x3

    if-ne p3, p0, :cond_1

    .line 1816
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Long press of key("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") action should be blocked by knox policy"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyCustomizationManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isHigherIdThanDefault(I)Z
    .locals 1

    .line 0
    const/4 p0, -0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/16 p0, 0x3e8

    if-ge p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isKnoxId(I)Z
    .locals 0

    .line 0
    const/16 p0, 0xa

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1e

    if-eq p1, p0, :cond_1

    const/16 p0, 0x32

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isKodiakDedicatedPttApp(Ljava/lang/String;)Z
    .locals 3

    .line 1450
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "com.verizon.pushtotalkplus"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string p0, "com.att.eptt"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string p0, "com.sprint.sdcplus"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    :sswitch_3
    const-string p0, "com.bell.ptt"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6e35f6ae -> :sswitch_3
        -0x3dc882fb -> :sswitch_2
        0x4dbc6965 -> :sswitch_1
        0x7903cfc3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isOnLockScreen(I)Z
    .locals 1

    const/16 v0, 0x437

    if-ne p1, v0, :cond_0

    .line 1213
    iget-boolean p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsTopKeyOnLockScreen:Z

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsXCoverKeyOnLockScreen:Z

    :goto_0
    return p0
.end method

.method public final isReportedKey(ZLandroid/os/Bundle;)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo p0, "reportStateOnKeyedDown"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "reportStateOnKeyedUp"

    .line 1775
    :goto_0
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isXCoverOrTopKey(I)Z
    .locals 0

    .line 0
    const/16 p0, 0x3f7

    if-eq p1, p0, :cond_1

    const/16 p0, 0x437

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final launchCamera()V
    .locals 5

    const-string v0, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 1305
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1307
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 1308
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationManager;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v2

    const-string v3, "isSecure"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isQuickLaunchMode"

    const/4 v3, 0x1

    .line 1310
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1311
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 1312
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1314
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationManager;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->semIsKeyguardShowingAndNotOccluded()Z

    move-result v0

    const-string v2, "KeyCustomizationManager"

    if-eqz v0, :cond_0

    const/high16 v0, 0x24000000

    .line 1315
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1318
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/app/IActivityTaskManager;->requestWaitingForOccluding(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed requestWaitingForOccluding, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/high16 v0, 0x200000

    .line 1325
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1329
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v0, "No activity to launch Camera, "

    .line 1331
    invoke-static {v2, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public launchLongPressAction(ILandroid/view/KeyEvent;I)Z
    .locals 5

    const/4 v0, 0x4

    .line 865
    invoke-virtual {p0, v0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 869
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchLongPressAction, keyCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeyCustomizationManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    if-eq p1, v0, :cond_2

    .line 892
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_1

    .line 893
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "launchLongPressAction. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was wrong."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    const-string p0, "launchLongPressAction was blocked by KeyCustomizationPolicy."

    .line 887
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 877
    :cond_3
    invoke-virtual {p0, v0, p3, p2}, Lcom/android/server/policy/KeyCustomizationManager;->startService(IILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 881
    :cond_4
    invoke-virtual {p0, p2, v0}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Landroid/view/KeyEvent;I)I

    move-result p0

    if-nez p0, :cond_6

    return v2

    .line 873
    :cond_5
    invoke-virtual {p0, v0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(II)V

    :cond_6
    :goto_0
    return v1
.end method

.method public launchLongPressAction(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 855
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    .line 856
    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 860
    :cond_0
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0
.end method

.method public launchMultiPressAction(Landroid/view/KeyEvent;I)V
    .locals 10

    const/4 v0, 0x5

    const-string v1, "KeyCustomizationManager"

    if-nez p1, :cond_0

    .line 904
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "launchMultiPressAction, event is null, Callers="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    if-ne p2, v3, :cond_2

    const/16 v0, 0x10

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_3

    const/16 v0, 0x20

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_4

    const/16 v0, 0x40

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    return-void

    .line 922
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 923
    invoke-virtual {p0, v0, v5}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v6

    if-nez v6, :cond_6

    return-void

    .line 928
    :cond_6
    iget v7, v6, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    if-ne v7, v2, :cond_7

    return-void

    .line 932
    :cond_7
    invoke-virtual {p0, v0, v5}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v2

    if-eqz v2, :cond_8

    return-void

    .line 936
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "launchMultiPressAction, count="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " keyCode="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v7, v2, :cond_b

    if-eq v7, v4, :cond_a

    if-eq v7, v3, :cond_9

    .line 948
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    invoke-static {v7}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was wrong."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 948
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 942
    :cond_9
    invoke-virtual {p0, v6, v0, v5, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    goto :goto_1

    .line 945
    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Landroid/view/KeyEvent;I)I

    goto :goto_1

    .line 939
    :cond_b
    invoke-virtual {p0, v6}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    :goto_1
    return-void
.end method

.method public final launchPressAction(ILandroid/view/KeyEvent;IZ)Z
    .locals 3

    const/4 v0, 0x3

    .line 825
    invoke-virtual {p0, v0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    if-eqz p4, :cond_1

    .line 841
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/high16 p2, 0x10000000

    const/4 v0, -0x1

    invoke-virtual {p0, p3, p2, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    goto :goto_0

    :cond_1
    return v2

    .line 835
    :cond_2
    invoke-virtual {p0, v0, p3, p2}, Lcom/android/server/policy/KeyCustomizationManager;->startService(IILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 831
    :cond_3
    invoke-virtual {p0, v0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(II)V

    .line 849
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "launchPressAction, keyCode="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->actionToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " forceDispatching="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyCustomizationManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public launchPressAction(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 814
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    .line 815
    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/KeyCustomizationManager;->getLastAction(II)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    .line 819
    :cond_0
    invoke-virtual {p0, v1, p1, v0, v3}, Lcom/android/server/policy/KeyCustomizationManager;->launchPressAction(ILandroid/view/KeyEvent;IZ)Z

    move-result p0

    return p0
.end method

.method public launchPressSendBroadcast(Landroid/view/KeyEvent;IZ)V
    .locals 4

    const/4 v0, 0x3

    .line 804
    invoke-virtual {p0, v0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 808
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchPressSendBroadcast, keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " isKeyLongPressed="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "KeyCustomizationManager"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-virtual {p0, v1, p1, v0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    return-void
.end method

.method public final launchXCoverActionIfNeeded(IILjava/lang/String;Z)Z
    .locals 1

    .line 1269
    invoke-virtual {p0, p4}, Lcom/android/server/policy/KeyCustomizationManager;->shouldDispatchEventForCameraShutter(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "KeyCustomizationManager"

    const-string p1, "Can not launch dedicated action. Camera is running."

    .line 1270
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1273
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverTopDedicatedAction(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1276
    :cond_1
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverDefaultAction(Ljava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public final launchXCoverDefaultAction(Ljava/lang/String;IIZ)Z
    .locals 3

    const-string/jumbo v0, "torch/torch"

    .line 1281
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 1282
    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->isOnLockScreen(I)Z

    move-result v2

    invoke-virtual {v0, v2, p3}, Lcom/android/server/policy/PhoneWindowManagerExt;->handleTorchForXCoverKey(ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1283
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->getEventId(II)Ljava/lang/String;

    move-result-object p1

    .line 1284
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1285
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string p2, "Torch"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    if-nez p4, :cond_2

    return v0

    :cond_2
    const-string p4, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    .line 1294
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 1295
    invoke-virtual {p0}, Lcom/android/server/policy/KeyCustomizationManager;->launchCamera()V

    return v1

    .line 1297
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1298
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(II)V

    return v1

    :cond_4
    return v0
.end method

.method public launchXCoverLongActionIfNeeded(IZ)Z
    .locals 6

    .line 1217
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KeyCustomizationManager"

    if-eqz v0, :cond_0

    const-string p0, "Block handling XCoverKey because of Automatic Test Mode"

    .line 1218
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x3

    .line 1223
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithOppositePress(II)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string p0, "Can not launch long press action by knox policy"

    .line 1224
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 v0, 0x4

    .line 1228
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastComponentName(II)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_2

    return v1

    .line 1232
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->shouldDispatchEventForCameraShutter(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string p0, "Can not launch dedicated long action. Camera is running."

    .line 1233
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1237
    :cond_3
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 1238
    invoke-virtual {p0, v1, p1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverTopDedicatedLongAction(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    .line 1241
    :cond_4
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverTopDedicatedAction(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_5

    return v3

    .line 1244
    :cond_5
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverDefaultAction(Ljava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method public launchXCoverPressActionIfNeeded(IZ)Z
    .locals 3

    .line 1249
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "KeyCustomizationManager"

    if-eqz v0, :cond_0

    const-string p0, "Block handling XCoverKey because of Automatic Test Mode"

    .line 1250
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x4

    .line 1254
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithOppositePress(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Can not launch press action by knox policy"

    .line 1255
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v0, 0x3

    .line 1259
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastComponentName(II)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 1264
    :cond_2
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 1263
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->launchXCoverActionIfNeeded(IILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final launchXCoverTopDedicatedAction(Ljava/lang/String;II)Z
    .locals 4

    const-string v0, "home/home"

    .line 1374
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1375
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/KeyCustomizationManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/policy/KeyCustomizationManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/KeyCustomizationManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "Home"

    goto :goto_0

    :cond_0
    const-string v0, "back/back"

    .line 1379
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1380
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v0, v3}, Lcom/android/server/policy/PhoneWindowManagerExt;->injectionKeyEvent(III)V

    const-string p1, "Back"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    move v1, v0

    .line 1385
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->getEventId(II)Ljava/lang/String;

    move-result-object p2

    .line 1386
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz p3, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1387
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method public final launchXCoverTopDedicatedLongAction(Ljava/lang/String;I)Z
    .locals 4

    const-string/jumbo v0, "quickMessageSender/quickMessageSender"

    .line 1393
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1394
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-boolean v0, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mIsSamsungKeyboard:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1395
    iput-boolean v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    .line 1396
    invoke-virtual {p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->openDictation(I)V

    goto :goto_0

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040ef6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x4

    .line 1402
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getEventId(II)Ljava/lang/String;

    move-result-object p1

    .line 1403
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1404
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    const-string p2, "Voice to text message"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt;->sendCoreSaLoggingDimension(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final migrationForKnoxPolicy(Landroid/content/Intent;Landroid/view/KeyEvent;ZZ)Z
    .locals 16

    move-object/from16 v1, p1

    .line 1639
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    .line 1640
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_0

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v11

    .line 1641
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-eqz v12, :cond_1

    if-nez v0, :cond_1

    move v13, v10

    goto :goto_1

    :cond_1
    move v13, v11

    .line 1646
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "getHardKeyReportState"

    .line 1648
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "getHardKeyIntentState"

    .line 1649
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move v14, v2

    move v15, v3

    goto :goto_2

    :cond_2
    move v14, v11

    move v15, v14

    :goto_2
    move-object/from16 v2, p0

    move v3, v9

    move v4, v12

    move v5, v13

    move-object v6, v0

    move v7, v14

    move v8, v15

    .line 1652
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/policy/KeyCustomizationManager;->shouldSkipActionForKnoxPolicy(IZZLandroid/os/Bundle;ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    return v10

    :cond_3
    const-string v2, "com.samsung.android.knox.intent.extra.KEY_CODE"

    .line 1658
    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v14, :cond_4

    move-object/from16 v2, p0

    .line 1660
    invoke-virtual {v2, v1, v0, v12, v13}, Lcom/android/server/policy/KeyCustomizationManager;->updateHardKeyReport(Landroid/content/Intent;Landroid/os/Bundle;ZZ)V

    goto :goto_3

    :cond_4
    move-object/from16 v2, p0

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v12

    move v4, v13

    move/from16 v5, p3

    .line 1662
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->updateHardKeyIntent(Landroid/content/Intent;IZZZ)V

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    move/from16 v4, p3

    move/from16 v5, p4

    .line 1664
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->updateIntentForKnoxPolicy(Landroid/content/Intent;ZZZZ)V

    :goto_3
    return v11
.end method

.method public onUserRemove(I)V
    .locals 0

    .line 1527
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->onUserRemove(I)V

    return-void
.end method

.method public onUserSwitch(I)V
    .locals 3

    .line 1517
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 1520
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->onUserSwitch(I)V

    .line 1521
    sget-object p1, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 1522
    invoke-virtual {p0, v2}, Lcom/android/server/policy/KeyCustomizationManager;->initPowerBehaviorAndSingleKeyGestureDetectorRule(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public prepareVoiceToTextMessage(ILandroid/view/KeyEvent;)V
    .locals 2

    .line 1349
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 1352
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastComponentName(II)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v1, "quickMessageSender/quickMessageSender"

    .line 1354
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 1353
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1358
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    move p2, v0

    :goto_0
    if-eqz p2, :cond_3

    .line 1360
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    return-void

    .line 1365
    :cond_3
    iget-boolean p2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    if-eqz p2, :cond_4

    .line 1366
    iput-boolean v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mIsCalledOpenDictationXCoverTop:Z

    .line 1367
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->closeDictation(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public putHotKey(ILandroid/content/ComponentName;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p0, "KeyCustomizationManager"

    const-string p1, "componentName is empty. Can not set hot key info."

    .line 1496
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1499
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationInfoManager;->putHotKey(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public putKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .locals 9

    .line 301
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->press:I

    .line 302
    iget v2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->keyCode:I

    .line 303
    iget v0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->action:I

    const-string v3, "KeyCustomizationManager"

    const/4 v4, 0x4

    const/16 v5, 0x8

    if-lt v1, v5, :cond_1

    if-ne v0, v4, :cond_1

    .line 305
    iget-object v6, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 306
    invoke-virtual {v6, v2}, Lcom/android/server/policy/SingleKeyGestureDetector;->hasRule(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 307
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isSafeDebugInput()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "No need to block double press behavior. Because there is no added Rule."

    .line 308
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 315
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->checkValidInputKeyCustomizationInfo(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    .line 317
    iget-object v6, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    .line 318
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isSafeDebugInput()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 319
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "putKeyCustomizationInfo keyCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 320
    invoke-static {v8}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ownerPackage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Caller="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    .line 321
    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 319
    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v3, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->put(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_3

    .line 327
    invoke-virtual {p0, v1}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    if-lt v1, v5, :cond_4

    .line 330
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v1, 0x3

    if-eqz v0, :cond_5

    return-void

    :cond_5
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_6

    .line 335
    iget-wide v3, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->longPressTimeout:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_6

    return-void

    .line 338
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->addSingleKeyGestureRule(I)V

    .line 341
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/KeyCustomizationManager;->updateLongPressTimeoutIfNeeded(II)V

    .line 342
    iget-wide v3, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->multiPressTimeout:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->updateMultiPressTimeoutIfNeeded(IIJZ)V

    return-void
.end method

.method public removeHotKey(Ljava/lang/String;)V
    .locals 1

    .line 1503
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1506
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->removeHotKey(Ljava/lang/String;)V

    return-void
.end method

.method public removeKeyCustomizationInfo(III)V
    .locals 1

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->removeKeyCustomizationInfo(ILjava/lang/String;II)V

    return-void
.end method

.method public removeKeyCustomizationInfo(ILjava/lang/String;II)V
    .locals 6

    .line 360
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isSafeDebugInput()Z

    move-result v0

    const-string v1, " "

    const-string v2, " keyCode="

    const-string v3, "KeyCustomizationManager"

    if-eqz v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeKeyCustomizationInfo "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-static {p3}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Callers="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->isEmptyKeyCustomizationInfo(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Requested info has been removed. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/KeyCustomizationManager;->idToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-static {p3}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 366
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 371
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/policy/KeyCustomizationManager;->getMultiPressTimeout(III)J

    move-result-wide v0

    .line 372
    iget-object v2, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/policy/KeyCustomizationInfoManager;->remove(ILjava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/16 p1, 0x1a

    if-ne p4, p1, :cond_3

    .line 377
    invoke-virtual {p0, p3}, Lcom/android/server/policy/KeyCustomizationManager;->updatePowerBehavior(I)V

    goto :goto_0

    .line 379
    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p1, p4}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateSingleKeyGestureRule(I)V

    :goto_0
    and-int/lit8 p1, p3, 0x4

    if-eqz p1, :cond_4

    .line 382
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p1, p4}, Lcom/android/server/policy/SingleKeyGestureDetector;->initLongPressTimeout(I)V

    .line 385
    :cond_4
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 386
    invoke-virtual {p1, p4}, Lcom/android/server/policy/SingleKeyGestureDetector;->getMultiPressTimeout(I)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    cmp-long p1, p1, v0

    if-nez p1, :cond_5

    .line 388
    invoke-virtual {p0, p4}, Lcom/android/server/policy/KeyCustomizationManager;->getMaximumMultiPressTimeout(I)J

    move-result-wide v3

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->updateMultiPressTimeoutIfNeeded(IIJZ)V

    :cond_5
    return-void
.end method

.method public removeKeyCustomizationInfoByPackage(Ljava/lang/String;II)V
    .locals 2

    .line 347
    invoke-static {}, Lcom/android/server/policy/KeyCustomizationConstants;->isSafeDebugInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeKeyCustomizationInfoByPackage ownerPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-static {p2}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizationManager"

    .line 348
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x7d3

    .line 351
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->removeKeyCustomizationInfo(ILjava/lang/String;II)V

    return-void
.end method

.method public restoreKeyCustomizationInfo(Ljava/util/List;)V
    .locals 2

    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreKeyCustomizationInfo, size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizationManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationInfoManager;->restoreKeyCustomizationInfo(Ljava/util/List;)V

    return-void
.end method

.method public sendBroadcast(Landroid/view/KeyEvent;I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 607
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    move-result p0

    return p0
.end method

.method public sendBroadcast(Landroid/view/KeyEvent;IZ)I
    .locals 1

    const/4 v0, 0x0

    .line 611
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I

    move-result p0

    return p0
.end method

.method public sendBroadcast(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;Landroid/view/KeyEvent;IZ)I
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return v9

    .line 620
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    .line 621
    invoke-virtual {v6, v8, v10}, Lcom/android/server/policy/KeyCustomizationManager;->hasHigherIdWithAllPress(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v9

    :cond_1
    if-nez p1, :cond_3

    .line 626
    iget-object v0, v6, Lcom/android/server/policy/KeyCustomizationManager;->mKeyCustomizationInfoManager:Lcom/android/server/policy/KeyCustomizationInfoManager;

    invoke-virtual {v0, v8, v10}, Lcom/android/server/policy/KeyCustomizationInfoManager;->getLast(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return v9

    :cond_2
    move-object v11, v0

    goto :goto_0

    :cond_3
    move-object/from16 v11, p1

    .line 632
    :goto_0
    iget v12, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    .line 633
    iget v13, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    move v14, v1

    goto :goto_1

    :cond_4
    move v14, v9

    .line 635
    :goto_1
    iget-object v0, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    and-int/lit8 v2, v8, 0x4

    if-eqz v2, :cond_5

    move v3, v1

    move v4, v9

    goto :goto_2

    :cond_5
    and-int/lit8 v2, v8, 0x8

    if-eqz v2, :cond_6

    move v4, v1

    move v3, v9

    goto :goto_2

    :cond_6
    move v3, v9

    move v4, v3

    :goto_2
    const-string v15, "KeyCustomizationManager"

    if-nez v0, :cond_8

    move-object/from16 v0, p0

    move v1, v12

    move-object/from16 v2, p2

    move/from16 v5, p4

    .line 646
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->getDefaultIntentForKnoxId(ILandroid/view/KeyEvent;ZZZ)Landroid/content/Intent;

    move-result-object v0

    :cond_7
    :goto_3
    move-object v4, v0

    move v2, v9

    goto :goto_4

    .line 649
    :cond_8
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v2, :cond_a

    const/16 v2, 0x3b7

    if-ne v12, v2, :cond_a

    .line 650
    iget-object v1, v6, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_9

    const-string v0, "Can not sendBroadcast. The user setup is not complete"

    .line 651
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 654
    :cond_9
    invoke-virtual {v6, v0, v7}, Lcom/android/server/policy/KeyCustomizationManager;->updateKeyInfoExtra(Landroid/content/Intent;Landroid/view/KeyEvent;)V

    goto :goto_3

    .line 655
    :cond_a
    invoke-virtual {v6, v12}, Lcom/android/server/policy/KeyCustomizationManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 656
    invoke-virtual {v6, v0, v7, v3, v4}, Lcom/android/server/policy/KeyCustomizationManager;->migrationForKnoxPolicy(Landroid/content/Intent;Landroid/view/KeyEvent;ZZ)Z

    move-result v2

    if-nez v14, :cond_b

    if-eqz p4, :cond_b

    const-string v3, "com.samsung.android.knox.intent.extra.EXTRA_REPORT_TYPE_NEW_LONG_UP"

    .line 658
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b
    move-object v4, v0

    :goto_4
    if-nez v4, :cond_c

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not sendBroadcast. intent is null. keyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-static/range {p3 .. p3}, Lcom/android/server/policy/KeyCustomizationManager;->pressToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_c
    if-nez v2, :cond_d

    .line 670
    invoke-virtual {v6, v4, v13}, Lcom/android/server/policy/KeyCustomizationManager;->sendBroadcastAsUser(Landroid/content/Intent;I)V

    .line 674
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v12

    move v2, v14

    move v5, v10

    .line 675
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/KeyCustomizationManager;->isBlockedDispatchingByKnoxPolicy(IZILandroid/content/Intent;I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_e

    return v1

    .line 678
    :cond_e
    invoke-virtual {v6, v12, v8, v10}, Lcom/android/server/policy/KeyCustomizationManager;->isForceBlockDispatchingLongByKnoxPolicy(III)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 683
    :cond_f
    iget v0, v11, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->dispatching:I

    if-ne v0, v1, :cond_10

    .line 684
    invoke-virtual {v6, v10}, Lcom/android/server/policy/KeyCustomizationManager;->isAllowHandleDispatching(I)Z

    move-result v1

    if-eqz v1, :cond_10

    return v0

    :cond_10
    return v9
.end method

.method public final sendBroadcastAsUser(Landroid/content/Intent;I)V
    .locals 2

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendBroadcastAsUser intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCustomizationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final shouldDispatchEventForCameraShutter(Z)Z
    .locals 0

    .line 1209
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->isCameraRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final shouldLaunchLongOrShortPressAction(II)Z
    .locals 0

    .line 0
    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_1

    :cond_0
    move p1, p2

    :cond_1
    const/4 p0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p0, 0x0

    :cond_2
    return p0
.end method

.method public final shouldSkipActionForKnoxPolicy(IZZLandroid/os/Bundle;ZZ)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_4

    .line 1681
    invoke-virtual {p0, v0, p4}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result p1

    .line 1682
    invoke-virtual {p0, v1, p4}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result p0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    return v1

    :cond_2
    if-eqz p0, :cond_3

    if-nez p2, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    if-eqz p6, :cond_5

    const/16 p0, 0x1a

    if-eq p1, p0, :cond_5

    if-nez p2, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method

.method public startActivity(II)V
    .locals 0

    .line 710
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 714
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V

    return-void
.end method

.method public startActivity(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;)V
    .locals 4

    .line 718
    iget-object v0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    const-string v1, "KeyCustomizationManager"

    if-nez v0, :cond_0

    const-string p0, "Can not startActivity. intent is null."

    .line 720
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 724
    :cond_0
    iget p1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivity. userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManagerExt;->getPendingIntentActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 730
    iget-object v0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mFillInIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->setPendingIntentAfterUnlock(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_0

    .line 732
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method

.method public final startMCPTTServiceIfNeeded(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1428
    invoke-virtual {p0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->isXCoverOrTopKey(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    .line 1431
    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 1435
    :cond_1
    iget-object v3, v2, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 1436
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 1440
    :cond_2
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.att.firstnet.grey"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1441
    invoke-virtual {p0, v2, v0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public startService(IILandroid/view/KeyEvent;)V
    .locals 1

    .line 737
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastKeyCustomizationInfo(II)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 741
    :cond_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/policy/KeyCustomizationManager;->startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V

    return-void
.end method

.method public startService(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;IILandroid/view/KeyEvent;)V
    .locals 5

    .line 745
    iget-object v0, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->intent:Landroid/content/Intent;

    .line 746
    iget v1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->id:I

    const-string v2, "KeyCustomizationManager"

    if-nez v0, :cond_0

    const-string p0, "Can not startService. intent is null."

    .line 749
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 753
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 754
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 755
    :goto_0
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_B2B_DEDICATED_APP:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x3b7

    if-ne v1, v4, :cond_2

    const-string v4, "com.att.firstnet.grey"

    .line 756
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p4, :cond_2

    const-string p2, "android.intent.extra.KEY_EVENT"

    .line 757
    invoke-static {p4}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_2
    const-string p4, "extraKeyCode"

    .line 759
    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "extraKeyAction"

    .line 760
    invoke-virtual {p0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getKeyAction(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 763
    :goto_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, "android.intent.action.MAIN"

    .line 764
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "startService add action main"

    .line 765
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_3
    iget p2, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->userId:I

    .line 769
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "startService. userId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " ownerPackage="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;->ownerPackage:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Callers="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    .line 770
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 769
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x7d3

    if-ne v1, p1, :cond_4

    .line 772
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_2

    .line 774
    :cond_4
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :goto_2
    return-void
.end method

.method public final updateHardKeyIntent(Landroid/content/Intent;IZZZ)V
    .locals 0

    const/16 p0, 0x1a

    if-eq p2, p0, :cond_0

    return-void

    :cond_0
    const-string p0, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE"

    if-eqz p5, :cond_1

    const/4 p2, 0x1

    .line 1732
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    const/4 p2, 0x2

    .line 1735
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    .line 1742
    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final updateHardKeyReport(Landroid/content/Intent;Landroid/os/Bundle;ZZ)V
    .locals 3

    const/4 v0, 0x0

    .line 1698
    invoke-virtual {p0, v0, p2}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    .line 1699
    invoke-virtual {p0, v1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->isReportedKey(ZLandroid/os/Bundle;)Z

    move-result p0

    const/4 p2, 0x2

    const-string v2, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE"

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    move v1, p2

    .line 1709
    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    return-void

    .line 1714
    :cond_3
    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    if-eqz p0, :cond_6

    if-nez p4, :cond_5

    return-void

    .line 1720
    :cond_5
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6
    :goto_1
    return-void
.end method

.method public final updateIntentForKnoxPolicy(Landroid/content/Intent;ZZZZ)V
    .locals 0

    if-eqz p4, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    const/16 p0, 0x8

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    const/4 p0, 0x2

    :goto_0
    const-string p2, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE_NEW"

    .line 1761
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method public final updateKeyInfoExtra(Landroid/content/Intent;Landroid/view/KeyEvent;)V
    .locals 2

    .line 1415
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_KODIAK_DEDICATED_PTT_APP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/KeyCustomizationManager;->isKodiakDedicatedPttApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.intent.extra.KEY_EVENT"

    .line 1416
    invoke-static {p2}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void

    .line 1420
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string v1, "com.samsung.android.knox.intent.extra.KEY_CODE"

    .line 1421
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    :goto_1
    const-string p0, "com.samsung.android.knox.intent.extra.KEY_REPORT_TYPE"

    .line 1422
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public final updateLongPressTimeoutIfNeeded(II)V
    .locals 1

    const/4 v0, 0x0

    .line 561
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/KeyCustomizationManager;->updateLongPressTimeoutIfNeeded(IIZ)V

    return-void
.end method

.method public final updateLongPressTimeoutIfNeeded(IIZ)V
    .locals 4

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    return-void

    .line 568
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/KeyCustomizationManager;->getLastLongPressTimeout(II)J

    move-result-wide v0

    if-eqz p3, :cond_1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    return-void

    .line 572
    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->setLongPressTimeout(IJ)V

    return-void
.end method

.method public final updateMultiPressTimeoutIfNeeded(IIJZ)V
    .locals 4

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-nez p1, :cond_1

    if-nez p5, :cond_1

    return-void

    .line 584
    :cond_1
    iget-object p1, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 585
    invoke-virtual {p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->getMultiPressTimeout(I)J

    move-result-wide v2

    if-nez p5, :cond_2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_2

    cmp-long p1, p3, v2

    if-gez p1, :cond_2

    return-void

    .line 589
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/policy/SingleKeyGestureDetector;->setMultiPressTimeout(IJ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final updatePowerBehavior(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 484
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateLongPressPowerBehavior()V

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    .line 486
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateDoublePressPowerBehavior()V

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    .line 488
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateTriplePressPowerBehavior()V

    goto :goto_0

    :cond_2
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_3

    .line 490
    iget-object p0, p0, Lcom/android/server/policy/KeyCustomizationManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt;->updateQuadruplePressPowerBehavior()V

    :cond_3
    :goto_0
    return-void
.end method
