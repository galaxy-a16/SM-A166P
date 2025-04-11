.class public final synthetic Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    iput p2, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    iget p0, p0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    invoke-static {v0, p0, p1}, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->$r8$lambda$tM9mB69mm-X1x64Uul6aip-4UrQ(Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;ILcom/samsung/android/knox/ddar/IDualDARPolicy;)V

    return-void
.end method
