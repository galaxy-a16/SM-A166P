.class public Lcom/android/server/am/AppProfiler$ProfileData;
.super Ljava/lang/Object;
.source "AppProfiler.java"


# instance fields
.field public mProfileApp:Ljava/lang/String;

.field public mProfileProc:Lcom/android/server/am/ProcessRecord;

.field public mProfilerInfo:Landroid/app/ProfilerInfo;

.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 395
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 396
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 397
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler;Lcom/android/server/am/AppProfiler$ProfileData-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/AppProfiler$ProfileData;-><init>(Lcom/android/server/am/AppProfiler;)V

    return-void
.end method


# virtual methods
.method public getProfileApp()Ljava/lang/String;
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileProc()Lcom/android/server/am/ProcessRecord;
    .locals 0

    .line 419
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    return-object p0
.end method

.method public getProfilerInfo()Landroid/app/ProfilerInfo;
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    return-object p0
.end method

.method public setProfileApp(Ljava/lang/String;)V
    .locals 1

    .line 400
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileApp:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_0

    .line 402
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setProfileApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setProfileProc(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 411
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 412
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_1

    .line 413
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    .line 413
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setProfileProc(Lcom/android/server/wm/WindowProcessController;)V

    :cond_1
    return-void
.end method

.method public setProfilerInfo(Landroid/app/ProfilerInfo;)V
    .locals 1

    .line 423
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$ProfileData;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 424
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    if-eqz v0, :cond_0

    .line 425
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$ProfileData;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->setProfilerInfo(Landroid/app/ProfilerInfo;)V

    :cond_0
    return-void
.end method
