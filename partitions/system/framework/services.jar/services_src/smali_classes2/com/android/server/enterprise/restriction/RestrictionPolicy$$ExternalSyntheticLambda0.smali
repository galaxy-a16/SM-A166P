.class public final synthetic Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->$r8$lambda$caG119uneqJuZJLxVkCzopr9_CE(ILcom/samsung/android/knox/restriction/RestrictionPolicy$USBInterface;)Z

    move-result p0

    return p0
.end method
