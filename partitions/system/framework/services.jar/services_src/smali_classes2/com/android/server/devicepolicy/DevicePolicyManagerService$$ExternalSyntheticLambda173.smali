.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda173;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    check-cast p1, Landroid/content/pm/UserInfo;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->$r8$lambda$qvJ1o05N4VPkZ45Se1c5L8Q_XZY(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/pm/UserInfo;)Z

    move-result p0

    return p0
.end method
