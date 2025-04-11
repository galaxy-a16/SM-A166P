.class public final Lcom/android/server/pm/UserVisibilityMediator;
.super Ljava/lang/Object;
.source "UserVisibilityMediator.java"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final DBG:Z

.field static final INITIAL_CURRENT_USER_ID:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCurrentUserId:I

.field public final mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mLock:Ljava/lang/Object;

.field public final mStartedInvisibleProfileUserIds:Ljava/util/List;

.field public final mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

.field public final mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

.field public final mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

.field public final mVisibleBackgroundUsersEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$xF3yf_Y2Cd4R3UzJEI93Fd5p2nM(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;IZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->lambda$dispatchVisibilityChanged$0(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;IZ)V

    return-void
.end method

.method public static constructor <clinit>()V
    .locals 2

    .line 103
    const-class v0, Lcom/android/server/pm/UserVisibilityMediator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 186
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    .line 187
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersOnDefaultDisplayEnabled()Z

    move-result v1

    .line 186
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/pm/UserVisibilityMediator;-><init>(ZZLandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(ZZLandroid/os/Handler;)V
    .locals 3

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    .line 163
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    .line 182
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 193
    iput-boolean p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot have visibleBackgroundUserOnDefaultDisplayEnabled without visibleBackgroundUsersOnDisplaysEnabled"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 203
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 204
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    goto :goto_1

    .line 206
    :cond_2
    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    .line 207
    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    .line 209
    :goto_1
    sget-boolean p1, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_3
    iput-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    .line 210
    iput-object p3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mHandler:Landroid/os/Handler;

    .line 212
    invoke-virtual {v1, v0, v0}, Landroid/util/SparseIntArray;->put(II)V

    if-eqz p1, :cond_4

    .line 215
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string p1, "UserVisibilityMediator created with DBG on"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public static dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "No "

    .line 1060
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " mappings"

    .line 1062
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Number of "

    .line 1065
    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " mappings: "

    .line 1067
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 1069
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-gtz p2, :cond_1

    return-void

    .line 1072
    :cond_1
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p2, 0x0

    .line 1073
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 1074
    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1075
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v1, " -> "

    .line 1076
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p0, p4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->print(C)V

    .line 1078
    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1080
    :cond_2
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public static isProfile(II)Z
    .locals 1

    .line 0
    const/16 v0, -0x2710

    if-eq p1, v0, :cond_0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSpecialUserId(I)Z
    .locals 1

    .line 0
    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    const/4 v0, -0x3

    if-eq p0, v0, :cond_0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$dispatchVisibilityChanged$0(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;IZ)V
    .locals 0

    .line 1005
    invoke-interface {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;->onUserVisibilityChanged(IZ)V

    return-void
.end method

.method public static secondaryDisplayMappingStatusToString(I)Ljava/lang/String;
    .locals 2

    .line 1159
    const-class v0, Lcom/android/server/pm/UserVisibilityMediator;

    const-string v1, "SECONDARY_DISPLAY_MAPPING_"

    invoke-static {v0, v1, p0}, Landroid/util/DebugUtils;->constantToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addListener(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;)V
    .locals 3

    .line 931
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_0

    .line 932
    sget-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v1, "adding listener %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public assignUserToDisplayOnStart(IIII)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    .line 225
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/UserVisibilityMediator;->isSpecialUserId(I)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const-string/jumbo v6, "user id cannot be generic: %d"

    .line 226
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 225
    invoke-static {v4, v6, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserVisibilityMediator;->validateUserStartMode(I)V

    const/16 v4, -0x2710

    move/from16 v6, p2

    if-ne v6, v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v6

    .line 244
    :goto_0
    sget-boolean v7, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v7, :cond_1

    .line 245
    sget-object v8, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v9, "assignUserToDisplayOnStart(%d, %d, %s, %d): actualProfileGroupId=%d"

    .line 246
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object v11

    .line 247
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v10, v6, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v6

    .line 245
    invoke-static {v8, v9, v6}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_1
    iget-object v6, v0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 253
    :try_start_0
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/pm/UserVisibilityMediator;->getUserVisibilityOnStartLocked(IIII)I

    move-result v8

    const/4 v9, 0x0

    if-eqz v7, :cond_2

    .line 256
    sget-object v10, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "result of getUserVisibilityOnStartLocked(%s)"

    new-array v12, v5, [Ljava/lang/Object;

    .line 257
    invoke-static {v8}, Lcom/android/server/pm/UserManagerInternal;->userAssignmentResultToString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    .line 256
    invoke-static {v10, v11, v12}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v10, -0x1

    if-eq v8, v10, :cond_10

    const/4 v11, 0x3

    if-ne v8, v11, :cond_3

    goto/16 :goto_3

    .line 264
    :cond_3
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/pm/UserVisibilityMediator;->canAssignUserToDisplayLocked(IIII)I

    move-result v12

    if-eqz v7, :cond_4

    .line 267
    sget-object v13, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "mapping result: %s"

    new-array v15, v5, [Ljava/lang/Object;

    .line 268
    invoke-static {v12}, Lcom/android/server/pm/UserVisibilityMediator;->secondaryDisplayMappingStatusToString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v9

    .line 267
    invoke-static {v13, v14, v15}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-ne v12, v10, :cond_5

    .line 271
    monitor-exit v6

    return v10

    .line 274
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object v10

    const/4 v13, 0x2

    if-eq v2, v5, :cond_7

    if-eq v2, v13, :cond_6

    if-eq v2, v11, :cond_8

    .line 296
    sget-object v4, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v11, "invalid userStartMode passed to assignUserToDisplayOnStart: %d"

    new-array v14, v5, [Ljava/lang/Object;

    .line 297
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v14, v9

    .line 296
    invoke-static {v4, v11, v14}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 289
    :cond_6
    iget-object v2, v0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    if-eqz v2, :cond_a

    .line 290
    invoke-static {v1, v4}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 291
    sget-object v2, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v4, "adding user %d to list of invisible profiles"

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v9

    invoke-static {v2, v4, v11}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    iget-object v2, v0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 279
    :cond_7
    iput v1, v0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    :cond_8
    if-eqz v7, :cond_9

    .line 283
    sget-object v2, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v11, "adding visible user / profile group id mapping (%d -> %d)"

    new-array v14, v13, [Ljava/lang/Object;

    .line 284
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v5

    .line 283
    invoke-static {v2, v11, v14}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :cond_9
    iget-object v2, v0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    :cond_a
    :goto_1
    if-eq v12, v5, :cond_c

    if-eq v12, v13, :cond_b

    .line 317
    sget-object v1, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v2, "invalid resut from canAssignUserToDisplayLocked: %d"

    new-array v3, v5, [Ljava/lang/Object;

    .line 318
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    .line 317
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    if-eqz v7, :cond_e

    .line 313
    sget-object v1, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v2, "don\'t need to update mUsersOnSecondaryDisplays"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    if-eqz v7, :cond_d

    .line 304
    sget-object v2, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v4, "adding user / display mapping (%d -> %d)"

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v5

    invoke-static {v2, v4, v11}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :cond_d
    iget-object v2, v0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 321
    :cond_e
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object v1

    .line 322
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-virtual {v0, v10, v1}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Landroid/util/IntArray;Landroid/util/IntArray;)V

    if-eqz v7, :cond_f

    .line 327
    sget-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "returning %s"

    invoke-static {v8}, Lcom/android/server/pm/UserManagerInternal;->userAssignmentResultToString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    return v8

    .line 261
    :cond_10
    :goto_3
    :try_start_1
    monitor-exit v6

    return v8

    :catchall_0
    move-exception v0

    .line 322
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final canAssignUserToDisplayLocked(IIII)I
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-nez p4, :cond_4

    .line 423
    iget-boolean v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    if-ne p3, v4, :cond_1

    .line 425
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserVisibilityMediator;->getUserStartedOnDisplay(I)I

    move-result v4

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_0

    if-eq v4, p2, :cond_0

    .line 428
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 429
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 430
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "canAssignUserToDisplayLocked(): cannot start user %d visible on default display because user %d already did so"

    .line 428
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-nez v4, :cond_2

    .line 435
    iget-boolean v5, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-eqz v5, :cond_2

    .line 436
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v2

    :cond_2
    if-nez v4, :cond_4

    .line 448
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_3

    .line 449
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 450
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Ignoring mapping for default display for user %d starting as %s"

    .line 449
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v0

    :cond_4
    if-nez p1, :cond_5

    .line 457
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Cannot assign system user to secondary display (%d)"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_5
    if-ne p4, v3, :cond_6

    .line 461
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Cannot assign to INVALID_DISPLAY (%d)"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 464
    :cond_6
    iget v4, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-ne p1, v4, :cond_7

    .line 465
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Cannot assign current user (%d) to other displays"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 469
    :cond_7
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz p4, :cond_8

    .line 473
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string p1, "Profile user can only be started in the default display"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 477
    :cond_8
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_9

    .line 478
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Don\'t need to map profile user %d to default display"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return v0

    .line 483
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    if-nez v0, :cond_b

    .line 485
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 487
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "canAssignUserToDisplayLocked(%d, %d, %d, %d) is trying to check mUsersAssignedToDisplayOnStart when it\'s not set"

    .line 485
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 492
    :cond_b
    :goto_1
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_f

    .line 493
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p2

    .line 494
    iget-object p3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p3

    .line 495
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_c

    .line 496
    sget-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 497
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%d: assignedUserId=%d, assignedDisplayId=%d"

    .line 496
    invoke-static {v0, v5, v4}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    if-ne p4, p3, :cond_d

    .line 500
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 501
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Cannot assign user %d to display %d because such display is already assigned to user %d"

    .line 500
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_d
    if-ne p1, p2, :cond_e

    .line 505
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 506
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p3, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Cannot assign user %d to display %d because such user is as already assigned to display %d"

    .line 505
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_f
    return v2
.end method

.method public final dispatchVisibilityChanged(Landroid/util/IntArray;Landroid/util/IntArray;)V
    .locals 6

    if-nez p1, :cond_1

    .line 966
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_0

    .line 967
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string p1, "dispatchVisibilityChanged(): ignoring, no listeners"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 972
    sget-boolean v1, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v1, :cond_2

    .line 973
    sget-object v1, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 975
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, p2, v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "dispatchVisibilityChanged(): visibleUsersBefore=%s, visibleUsersAfter=%s, %d listeners (%s)"

    .line 973
    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    .line 978
    :goto_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_4

    .line 979
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 980
    invoke-virtual {p2, v3}, Landroid/util/IntArray;->indexOf(I)I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 981
    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 984
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 985
    invoke-virtual {p2, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 986
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    .line 987
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 994
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x758b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 995
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_0

    .line 996
    sget-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 997
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "dispatchVisibilityChanged(%d -> %b): sending to %d listeners"

    .line 996
    invoke-static {v0, v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_1

    .line 1000
    iget-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;

    .line 1005
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    const-string v0, "UserVisibilityMediator"

    .line 1010
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "DBG: "

    .line 1013
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1014
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1016
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Current user id: "

    .line 1017
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1018
    iget v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v1, "Visible users: "

    .line 1020
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1023
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const-string/jumbo v2, "started visible user / profile group"

    const-string/jumbo v3, "u"

    const-string/jumbo v4, "pg"

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/server/pm/UserVisibilityMediator;->dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string v1, "Profiles started invisible: "

    .line 1026
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    const-string v1, "Supports visible background users on displays: "

    .line 1030
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1031
    iget-boolean v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v1, "Supports visible background users on default display: "

    .line 1033
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1034
    iget-boolean v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1036
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    const-string/jumbo v2, "user / display"

    const-string/jumbo v3, "u"

    const-string v4, "d"

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/server/pm/UserVisibilityMediator;->dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    const-string v2, "extra display / user"

    const-string v3, "d"

    const-string/jumbo v4, "u"

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/server/pm/UserVisibilityMediator;->dumpSparseIntArray(Landroid/util/IndentingPrintWriter;Landroid/util/SparseIntArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const-string v2, "Number of listeners: "

    .line 1041
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(I)V

    if-lez v1, :cond_2

    .line 1044
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1046
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, ": "

    .line 1047
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1048
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1050
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1052
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception p0

    .line 1052
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1085
    instance-of p2, p1, Landroid/util/IndentingPrintWriter;

    if-eqz p2, :cond_0

    .line 1086
    check-cast p1, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void

    .line 1089
    :cond_0
    new-instance p2, Landroid/util/IndentingPrintWriter;

    invoke-direct {p2, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserVisibilityMediator;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final getCurrentUserId()I
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1114
    :try_start_0
    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1115
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMainDisplayAssignedToUser(I)I
    .locals 3

    .line 780
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 781
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserVisibilityMediator;->getUserStartedOnDisplay(I)I

    move-result p0

    .line 787
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_1

    .line 789
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_0

    .line 790
    sget-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v2, "getMainDisplayAssignedToUser(%d): returning INVALID_DISPLAY for current user user %d was started on DEFAULT_DISPLAY"

    .line 792
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 790
    invoke-static {v0, v2, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1

    :catchall_0
    move-exception p0

    .line 787
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return v2

    .line 800
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_3

    return v1

    .line 804
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 805
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    .line 806
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public getUserAssignedToDisplay(I)I
    .locals 1

    const/4 v0, 0x1

    .line 856
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserVisibilityMediator;->getUserAssignedToDisplay(IZ)I

    move-result p0

    return p0
.end method

.method public final getUserAssignedToDisplay(IZ)I
    .locals 8

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    .line 872
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_2

    .line 875
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getCurrentUserId()I

    move-result p0

    return p0

    .line 878
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 879
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 880
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq v3, p1, :cond_3

    goto :goto_1

    .line 883
    :cond_3
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 884
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserVisibilityMediator;->isStartedVisibleProfileLocked(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 885
    monitor-exit v0

    return v3

    .line 886
    :cond_4
    sget-boolean v4, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v4, :cond_5

    .line 887
    sget-object v4, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v5, "getUserAssignedToDisplay(%d): skipping user %d because it\'s a profile"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 888
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v6, v7

    .line 887
    invoke-static {v4, v5, v6}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 891
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_8

    .line 893
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_7

    .line 894
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string p2, "getUserAssignedToDisplay(%d): no user assigned to display, returning USER_NULL instead"

    .line 895
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 894
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    const/16 p0, -0x2710

    return p0

    .line 900
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getCurrentUserId()I

    move-result p0

    .line 901
    sget-boolean p2, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p2, :cond_9

    .line 902
    sget-object p2, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v0, "getUserAssignedToDisplay(%d): no user assigned to display, returning current user (%d) instead"

    .line 903
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 902
    invoke-static {p2, v0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return p0

    :catchall_0
    move-exception p0

    .line 891
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getUserStartedOnDisplay(I)I
    .locals 1

    const/4 v0, 0x0

    .line 863
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/UserVisibilityMediator;->getUserAssignedToDisplay(IZ)I

    move-result p0

    return p0
.end method

.method public final getUserVisibilityOnStartLocked(IIII)I
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    if-eqz p4, :cond_0

    .line 340
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cannot start user (%d) as BACKGROUND_USER on secondary display (%d) (it should be BACKGROUND_USER_VISIBLE"

    .line 340
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne p3, v3, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    if-nez p4, :cond_3

    if-eqz v5, :cond_3

    .line 347
    iget-boolean v6, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserLocked(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 349
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 350
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "trying to start current user (%d) visible in background on default display"

    .line 349
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 354
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-nez v6, :cond_3

    .line 355
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 356
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "cannot start full user (%d) visible on default display"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_3
    if-ne p3, v4, :cond_4

    move v2, v4

    :cond_4
    if-eqz p4, :cond_6

    if-eqz v2, :cond_5

    .line 364
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 365
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 366
    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getUserVisibilityOnStartLocked(%d, %d, %s, %d) failed: cannot start foreground user on secondary display"

    .line 364
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 369
    :cond_5
    iget-boolean v6, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v6, :cond_6

    .line 370
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 372
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getUserVisibilityOnStartLocked(%d, %d, %s, %d) failed: called on device that doesn\'t support multiple users on multiple displays"

    .line 370
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 377
    :cond_6
    invoke-static {p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz p4, :cond_7

    .line 379
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 380
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 381
    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "canStartUserLocked(%d, %d, %s, %d) failed: cannot start profile user on secondary display"

    .line 379
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_7
    if-eq p3, v4, :cond_b

    if-eq p3, v1, :cond_a

    if-eq p3, v3, :cond_8

    goto :goto_1

    .line 391
    :cond_8
    invoke-virtual {p0, p2, p4}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(II)Z

    move-result p0

    if-nez p0, :cond_9

    .line 393
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 395
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 396
    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "getUserVisibilityOnStartLocked(%d, %d, %s, %d) failed: cannot start profile user visible when its parent is not visible in that display"

    .line 393
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_9
    return v4

    :cond_a
    return v1

    .line 386
    :cond_b
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 387
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 388
    invoke-static {p3}, Lcom/android/server/pm/UserManagerInternal;->userStartModeToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "startUser(%d, %d, %s, %d) failed: cannot start profile user in foreground"

    .line 386
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 403
    :cond_c
    iget-object p2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_e

    .line 404
    invoke-virtual {p0, p1, p4}, Lcom/android/server/pm/UserVisibilityMediator;->isUserAssignedToDisplayOnStartLocked(II)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 405
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_d

    .line 406
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "full user %d is already visible on display %d"

    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return v3

    :cond_e
    :goto_1
    if-nez v2, :cond_f

    if-nez p4, :cond_f

    if-eqz v5, :cond_10

    .line 412
    iget-boolean p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUserOnDefaultDisplayEnabled:Z

    if-eqz p0, :cond_10

    :cond_f
    move v1, v4

    :cond_10
    return v1
.end method

.method public getVisibleUsers()Landroid/util/IntArray;
    .locals 5

    .line 915
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 916
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 917
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 918
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 919
    invoke-virtual {p0, v3}, Lcom/android/server/pm/UserVisibilityMediator;->isUserVisible(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 920
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 923
    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isCurrentUserLocked(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_1

    .line 1121
    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final isCurrentUserOrRunningProfileOfCurrentUser(I)Z
    .locals 5

    .line 1128
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-eq p1, v2, :cond_3

    .line 1130
    :try_start_0
    iget v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v3, p1, :cond_1

    .line 1134
    monitor-exit v0

    return v4

    .line 1136
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    iget p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mCurrentUserId:I

    if-ne p1, p0, :cond_2

    move v1, v4

    :cond_2
    monitor-exit v0

    return v1

    .line 1131
    :cond_3
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 1138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isFullUserVisibleOnBackgroundLocked(II)Z
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p2, :cond_0

    return v1

    .line 773
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    const/16 v0, -0x2710

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isStartedVisibleProfileLocked(I)Z
    .locals 1

    .line 1143
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v0, -0x2710

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    .line 1144
    invoke-static {p1, p0}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result p0

    return p0
.end method

.method public final isUserAssignedToDisplayOnStartLocked(I)Z
    .locals 0

    .line 699
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUserAssignedToDisplayOnStartLocked(II)Z
    .locals 2

    .line 708
    iget-object p0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 710
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    .line 711
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "isUserAssignedToDisplayOnStartLocked(%d, %d): called when mUsersAssignedToDisplayOnStart is null"

    .line 710
    invoke-static {p0, p2, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 715
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isUserVisible(I)Z
    .locals 4

    .line 669
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 676
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 688
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 689
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 690
    :try_start_2
    invoke-static {p1, v2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 691
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserVisibilityMediator;->isUserAssignedToDisplayOnStartLocked(I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 693
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isUserAssignedToDisplayOnStartLocked(I)Z

    move-result p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p0

    :catchall_0
    move-exception p0

    .line 689
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    .line 694
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public isUserVisible(II)Z
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return v1

    .line 736
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->isCurrentUserOrRunningProfileOfCurrentUser(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 745
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v0, :cond_4

    .line 746
    sget-boolean p0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz p0, :cond_3

    .line 747
    sget-object p0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string v0, "isUserVisible(%d, %d): returning false as device does not support visible background users"

    .line 748
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 747
    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v1

    .line 753
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 756
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    const/16 v3, -0x2710

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 757
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    :try_start_2
    invoke-static {p1, v2}, Lcom/android/server/pm/UserVisibilityMediator;->isProfile(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 759
    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isFullUserVisibleOnBackgroundLocked(II)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 761
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserVisibilityMediator;->isFullUserVisibleOnBackgroundLocked(II)Z

    move-result p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p0

    :catchall_0
    move-exception p0

    .line 757
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    .line 762
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public onSystemUserVisibilityChanged(Z)V
    .locals 2

    .line 956
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Ljava/util/concurrent/CopyOnWriteArrayList;IZ)V

    return-void
.end method

.method public final unassignUserFromAllDisplaysOnStopLocked(I)V
    .locals 4

    .line 629
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_0

    .line 630
    sget-object v1, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Removing %d from mStartedVisibleProfileGroupIds (%s)"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedVisibleProfileGroupIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 634
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 635
    sget-object v1, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Removing %d from list of invisible profiles"

    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mStartedInvisibleProfileUserIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 639
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mVisibleBackgroundUsersEnabled:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 646
    sget-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Removing user %d from mUsersOnDisplaysMap (%s)"

    invoke-static {v0, v2, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mUsersAssignedToDisplayOnStart:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 652
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    .line 653
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-ne v1, p1, :cond_5

    .line 654
    sget-boolean v1, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v1, :cond_4

    .line 655
    sget-object v1, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    .line 656
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Removing display %d from mExtraDisplaysAssignedToUsers (%s)"

    .line 655
    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/UserVisibilityMediator;->mExtraDisplaysAssignedToUsers:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public unassignUserFromDisplayOnStop(I)V
    .locals 3

    .line 613
    sget-boolean v0, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    if-eqz v0, :cond_0

    .line 614
    sget-object v0, Lcom/android/server/pm/UserVisibilityMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unassignUserFromDisplayOnStop(%d)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object v1

    .line 620
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserVisibilityMediator;->unassignUserFromAllDisplaysOnStopLocked(I)V

    .line 622
    invoke-virtual {p0}, Lcom/android/server/pm/UserVisibilityMediator;->getVisibleUsers()Landroid/util/IntArray;

    move-result-object p1

    .line 623
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/UserVisibilityMediator;->dispatchVisibilityChanged(Landroid/util/IntArray;Landroid/util/IntArray;)V

    return-void

    :catchall_0
    move-exception p0

    .line 623
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final validateUserStartMode(I)V
    .locals 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 1154
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user start mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
