.class public final synthetic Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    move-object p0, p1

    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    check-cast p3, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    check-cast p4, Ljava/lang/String;

    check-cast p5, Landroid/media/MediaRoute2Info;

    invoke-static/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->$r8$lambda$DPFcPc8F4Mow7kKJO3dI4V33MrM(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;JLcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method
