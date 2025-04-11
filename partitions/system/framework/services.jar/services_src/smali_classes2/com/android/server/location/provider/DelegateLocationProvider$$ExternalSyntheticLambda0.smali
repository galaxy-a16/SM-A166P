.class public final synthetic Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/DelegateLocationProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/DelegateLocationProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/provider/DelegateLocationProvider;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/provider/DelegateLocationProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/provider/DelegateLocationProvider;

    check-cast p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    invoke-static {p0, p1}, Lcom/android/server/location/provider/DelegateLocationProvider;->$r8$lambda$6qA_DXH1SfX77QFFZbOawB5bgH4(Lcom/android/server/location/provider/DelegateLocationProvider;Lcom/android/server/location/provider/AbstractLocationProvider$State;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method
