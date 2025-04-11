.class public Lcom/android/server/wm/WindowToken$Builder;
.super Ljava/lang/Object;
.source "WindowToken.java"


# instance fields
.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFromClientToken:Z

.field public mOptions:Landroid/os/Bundle;

.field public mOwnerCanManageAppTokens:Z

.field public mPersistOnEmpty:Z

.field public mRoundedCornerOverlay:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mToken:Landroid/os/IBinder;

.field public final mType:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;I)V
    .locals 0

    .line 902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    iput-object p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 904
    iput-object p2, p0, Lcom/android/server/wm/WindowToken$Builder;->mToken:Landroid/os/IBinder;

    .line 905
    iput p3, p0, Lcom/android/server/wm/WindowToken$Builder;->mType:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/wm/WindowToken;
    .locals 20

    move-object/from16 v0, p0

    .line 946
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/wm/WindowToken$Builder;->mType:I

    const/16 v2, 0xa48

    if-ne v1, v2, :cond_0

    .line 948
    new-instance v1, Lcom/android/server/wm/TransientLaunchOverlayToken;

    iget-object v4, v0, Lcom/android/server/wm/WindowToken$Builder;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v0, Lcom/android/server/wm/WindowToken$Builder;->mToken:Landroid/os/IBinder;

    iget-boolean v6, v0, Lcom/android/server/wm/WindowToken$Builder;->mPersistOnEmpty:Z

    iget-object v7, v0, Lcom/android/server/wm/WindowToken$Builder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v8, v0, Lcom/android/server/wm/WindowToken$Builder;->mOwnerCanManageAppTokens:Z

    iget-object v9, v0, Lcom/android/server/wm/WindowToken$Builder;->mOptions:Landroid/os/Bundle;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/TransientLaunchOverlayToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;ZLcom/android/server/wm/DisplayContent;ZLandroid/os/Bundle;)V

    return-object v1

    .line 953
    :cond_0
    new-instance v1, Lcom/android/server/wm/WindowToken;

    iget-object v11, v0, Lcom/android/server/wm/WindowToken$Builder;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v0, Lcom/android/server/wm/WindowToken$Builder;->mToken:Landroid/os/IBinder;

    iget v13, v0, Lcom/android/server/wm/WindowToken$Builder;->mType:I

    iget-boolean v14, v0, Lcom/android/server/wm/WindowToken$Builder;->mPersistOnEmpty:Z

    iget-object v15, v0, Lcom/android/server/wm/WindowToken$Builder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v0, Lcom/android/server/wm/WindowToken$Builder;->mOwnerCanManageAppTokens:Z

    iget-boolean v3, v0, Lcom/android/server/wm/WindowToken$Builder;->mRoundedCornerOverlay:Z

    iget-boolean v4, v0, Lcom/android/server/wm/WindowToken$Builder;->mFromClientToken:Z

    iget-object v0, v0, Lcom/android/server/wm/WindowToken$Builder;->mOptions:Landroid/os/Bundle;

    move-object v10, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v0

    invoke-direct/range {v10 .. v19}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZLandroid/os/Bundle;)V

    return-object v1
.end method

.method public setDisplayContent(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowToken$Builder;
    .locals 0

    .line 916
    iput-object p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public setFromClientToken(Z)Lcom/android/server/wm/WindowToken$Builder;
    .locals 0

    .line 934
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mFromClientToken:Z

    return-object p0
.end method

.method public setOptions(Landroid/os/Bundle;)Lcom/android/server/wm/WindowToken$Builder;
    .locals 0

    .line 940
    iput-object p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public setOwnerCanManageAppTokens(Z)Lcom/android/server/wm/WindowToken$Builder;
    .locals 0

    .line 922
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mOwnerCanManageAppTokens:Z

    return-object p0
.end method

.method public setPersistOnEmpty(Z)Lcom/android/server/wm/WindowToken$Builder;
    .locals 0

    .line 910
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mPersistOnEmpty:Z

    return-object p0
.end method

.method public setRoundedCornerOverlay(Z)Lcom/android/server/wm/WindowToken$Builder;
    .locals 0

    .line 928
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mRoundedCornerOverlay:Z

    return-object p0
.end method
