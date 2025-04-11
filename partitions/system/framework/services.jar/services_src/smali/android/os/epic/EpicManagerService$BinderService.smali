.class public final Landroid/os/epic/EpicManagerService$BinderService;
.super Landroid/os/epic/IEpicManager$Stub;
.source "EpicManagerService.java"


# instance fields
.field public final synthetic this$0:Landroid/os/epic/EpicManagerService;


# direct methods
.method public constructor <init>(Landroid/os/epic/EpicManagerService;)V
    .locals 0

    iput-object p1, p0, Landroid/os/epic/EpicManagerService$BinderService;->this$0:Landroid/os/epic/EpicManagerService;

    invoke-direct {p0}, Landroid/os/epic/IEpicManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/epic/EpicManagerService;Landroid/os/epic/EpicManagerService$BinderService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/epic/EpicManagerService$BinderService;-><init>(Landroid/os/epic/EpicManagerService;)V

    return-void
.end method


# virtual methods
.method public Create(I)Landroid/os/epic/IEpicObject;
    .locals 0

    invoke-static {p1}, Landroid/os/epic/ObjectFactory;->create(I)Landroid/os/epic/IEpicObject;

    move-result-object p0

    return-object p0
.end method

.method public Creates([I)Landroid/os/epic/IEpicObject;
    .locals 0

    invoke-static {p1}, Landroid/os/epic/ObjectFactory;->create([I)Landroid/os/epic/IEpicObject;

    move-result-object p0

    return-object p0
.end method
