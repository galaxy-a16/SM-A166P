.class public final synthetic Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->$r8$lambda$gAMjQVSQQe9S47pU3XhxL36Q9Ac(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;Ljava/lang/String;J)V

    return-void
.end method
