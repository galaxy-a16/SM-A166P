.class public final synthetic Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/PeopleService$LocalService;

.field public final synthetic f$1:Landroid/content/pm/ParceledListSlice;

.field public final synthetic f$2:Landroid/app/prediction/IPredictionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/PeopleService$LocalService;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    iput-object p2, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->f$1:Landroid/content/pm/ParceledListSlice;

    iput-object p3, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->f$2:Landroid/app/prediction/IPredictionCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/people/PeopleService$LocalService;

    iget-object v1, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->f$1:Landroid/content/pm/ParceledListSlice;

    iget-object p0, p0, Lcom/android/server/people/PeopleService$LocalService$$ExternalSyntheticLambda3;->f$2:Landroid/app/prediction/IPredictionCallback;

    check-cast p1, Lcom/android/server/people/SessionInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/people/PeopleService$LocalService;->$r8$lambda$Lz1u-q884w22hqRY6UaR7GJmmWE(Lcom/android/server/people/PeopleService$LocalService;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/people/SessionInfo;)V

    return-void
.end method
