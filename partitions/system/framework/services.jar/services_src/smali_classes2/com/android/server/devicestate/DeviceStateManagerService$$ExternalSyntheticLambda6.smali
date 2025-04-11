.class public final synthetic Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicestate/DeviceStateManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    iput p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    iget p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda6;->f$1:I

    check-cast p1, Lcom/android/server/devicestate/DeviceState;

    invoke-static {v0, p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->$r8$lambda$NOm4FgSdPRueVhHB8cKq1tt6ZUk(Lcom/android/server/devicestate/DeviceStateManagerService;ILcom/android/server/devicestate/DeviceState;)Z

    move-result p0

    return p0
.end method
