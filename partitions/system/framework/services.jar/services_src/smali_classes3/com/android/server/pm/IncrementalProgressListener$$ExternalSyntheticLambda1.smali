.class public final synthetic Lcom/android/server/pm/IncrementalProgressListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    invoke-static {p1}, Lcom/android/server/pm/IncrementalProgressListener;->$r8$lambda$OmcdTi2d7RsBZHeEWGNKlU2_SV0(Lcom/android/server/pm/pkg/mutate/PackageStateWrite;)V

    return-void
.end method
