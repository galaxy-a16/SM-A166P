.class public final synthetic Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ComputerEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ComputerEngine;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/ComputerEngine;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/pm/ComputerEngine;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/android/server/pm/ComputerEngine;->$r8$lambda$69ENykzZuC8hTWRJBQwZMYXvgTY(Lcom/android/server/pm/ComputerEngine;Ljava/lang/Integer;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
