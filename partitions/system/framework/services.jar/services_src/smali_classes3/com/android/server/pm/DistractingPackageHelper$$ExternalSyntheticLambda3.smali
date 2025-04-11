.class public final synthetic Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/DistractingPackageHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/DistractingPackageHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/DistractingPackageHelper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/DistractingPackageHelper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/DistractingPackageHelper;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/os/Bundle;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/DistractingPackageHelper;->$r8$lambda$pRhlfoINynGG7ESRj4RRFLoutRA(Lcom/android/server/pm/DistractingPackageHelper;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
