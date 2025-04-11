.class public abstract Lcom/android/server/policy/KeyCustomizationConstants;
.super Ljava/lang/Object;
.source "KeyCustomizationConstants.java"


# static fields
.field public static ALL_KEYCODE_TYPE:[I

.field public static EXTERNAL_SUPPORTED_BEHAVIOR_PRESS_TYPE:[I

.field public static NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

.field public static SUPPORT_PRELOAD_KODIAK_PTT:[Ljava/lang/String;

.field public static SUPPORT_PRESS_TYPE_ALL:[I

.field public static SUPPORT_PRESS_TYPE_BASIC:[I

.field public static SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

.field public static final VOLD_DECRYPT:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string/jumbo v0, "vold.decrypt"

    .line 406
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->VOLD_DECRYPT:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 445
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_ALL:[I

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/16 v2, 0x8

    .line 457
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sput-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_BASIC:[I

    const/16 v3, 0x20

    const/16 v4, 0x10

    const/16 v5, 0x40

    .line 463
    filled-new-array {v5, v3, v4, v2, v1}, [I

    move-result-object v3

    sput-object v3, Lcom/android/server/policy/KeyCustomizationConstants;->NEEDED_UPDATE_BEHAVIOR_MULTI_PRESS_TYPE:[I

    .line 473
    filled-new-array {v1, v2}, [I

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->EXTERNAL_SUPPORTED_BEHAVIOR_PRESS_TYPE:[I

    const/16 v2, 0xd

    new-array v2, v2, [I

    .line 478
    fill-array-data v2, :array_1

    sput-object v2, Lcom/android/server/policy/KeyCustomizationConstants;->ALL_KEYCODE_TYPE:[I

    .line 497
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRESS_TYPE_XCOVER_TOP:[I

    const-string v0, "com.sprint.sdcplus"

    const-string v1, "com.bell.ptt"

    const-string v2, "com.verizon.pushtotalkplus"

    const-string v3, "com.att.eptt"

    .line 504
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/KeyCustomizationConstants;->SUPPORT_PRELOAD_KODIAK_PTT:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x4
        0x8
        0x10
        0x20
        0x40
    .end array-data

    :array_1
    .array-data 4
        0x1a
        0xbb
        0x3
        0x4
        0x18
        0x19
        0x3f7
        0x437
        0x4f
        0x445
        0x446
        0x447
        0x448
    .end array-data
.end method

.method public static isDebugInput()Z
    .locals 1

    .line 514
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_INPUT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSafeDebugInput()Z
    .locals 1

    .line 518
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_INPUT:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-static {v0}, Lcom/android/internal/protolog/ProtoLogImpl;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
