.class public Lcom/android/server/accessibility/gestures/GestureManifold;
.super Ljava/lang/Object;
.source "GestureManifold.java"

# interfaces
.implements Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEvents:Ljava/util/List;

.field public final mGestures:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

.field public final mMultiFingerGestures:Ljava/util/List;

.field public mMultiFingerGesturesEnabled:Z

.field public mSendMotionEventsEnabled:Z

.field public mServiceHandlesDoubleTap:Z

.field public mState:Lcom/android/server/accessibility/gestures/TouchState;

.field public mTwoFingerPassthroughEnabled:Z

.field public final mTwoFingerSwipes:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold$Listener;Lcom/android/server/accessibility/gestures/TouchState;Landroid/os/Handler;)V
    .locals 12

    move-object v6, p0

    move-object v7, p1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v6, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, v6, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    .line 107
    iput-boolean v0, v6, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    .line 109
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v6, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    .line 112
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v6, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerSwipes:Ljava/util/List;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    .line 119
    iput-object v7, v6, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    move-object/from16 v1, p4

    .line 120
    iput-object v1, v6, Lcom/android/server/accessibility/gestures/GestureManifold;->mHandler:Landroid/os/Handler;

    move-object v1, p2

    .line 121
    iput-object v1, v6, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    move-object v1, p3

    .line 122
    iput-object v1, v6, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 123
    iput-boolean v0, v6, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    .line 124
    iput-boolean v0, v6, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    .line 127
    new-instance v1, Lcom/android/server/accessibility/gestures/MultiTap;

    const/4 v2, 0x2

    const/16 v3, 0x11

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v1, Lcom/android/server/accessibility/gestures/MultiTapAndHold;

    const/16 v4, 0x12

    invoke-direct {v1, p1, v2, v4, p0}, Lcom/android/server/accessibility/gestures/MultiTapAndHold;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-direct {v1, p1, v4, v3, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x3

    invoke-direct {v1, p1, v0, v3, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    invoke-direct {v0, p1, v2, v4, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Lcom/android/server/accessibility/gestures/Swipe;

    invoke-direct {v0, p1, v3, v2, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v11, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    move-object v0, v11

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v11, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x2

    const/16 v4, 0x9

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v11, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x3

    const/16 v4, 0xa

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v11, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0xb

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    new-instance v11, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x3

    const/16 v4, 0xc

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v11, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x0

    const/4 v4, 0x6

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v11, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x8

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v11, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x0

    const/16 v4, 0xf

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v11, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x1

    const/16 v4, 0x10

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v11, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x7

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v11, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x0

    const/16 v4, 0xd

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v11, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x1

    const/16 v4, 0xe

    move-object v0, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/16 v4, 0x13

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/4 v3, 0x2

    const/16 v4, 0x14

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    const/16 v4, 0x28

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/4 v3, 0x3

    const/16 v4, 0x15

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    const/16 v4, 0x2b

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/16 v4, 0x16

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/4 v3, 0x2

    const/16 v4, 0x17

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    const/4 v3, 0x1

    const/16 v4, 0x2c

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    const/4 v3, 0x2

    const/16 v4, 0x29

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/4 v3, 0x3

    const/16 v4, 0x18

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    const/16 v4, 0x2d

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/16 v4, 0x18

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/16 v4, 0x25

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/4 v3, 0x2

    const/16 v4, 0x26

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    const/16 v4, 0x2a

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    const/4 v3, 0x3

    const/16 v4, 0x27

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v2, 0x2

    const/16 v4, 0x1a

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v3, 0x0

    const/16 v4, 0x1b

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v3, 0x1

    const/16 v4, 0x1c

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v3, 0x2

    const/16 v4, 0x19

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 201
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v2, 0x3

    const/4 v3, 0x3

    const/16 v4, 0x1e

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v3, 0x0

    const/16 v4, 0x1f

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v3, 0x1

    const/16 v4, 0x20

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v3, 0x2

    const/16 v4, 0x1d

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/16 v4, 0x22

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v3, 0x0

    const/16 v4, 0x23

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v3, 0x1

    const/16 v4, 0x24

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v8, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v3, 0x2

    const/16 v4, 0x21

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v8, Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 272
    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 275
    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getGestures()Ljava/util/List;
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    return-object p0
.end method

.method public getMotionEvents()Ljava/util/List;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    return-object p0
.end method

.method public isMultiFingerGesturesEnabled()Z
    .locals 0

    .line 389
    iget-boolean p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    return p0
.end method

.method public isSendMotionEventsEnabled()Z
    .locals 0

    .line 440
    iget-boolean p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    return p0
.end method

.method public isTwoFingerPassthroughEnabled()Z
    .locals 0

    .line 404
    iget-boolean p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    return p0
.end method

.method public final onGestureCompleted(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    .line 380
    new-instance p3, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 381
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result p2

    iget-object p4, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    invoke-direct {p3, p1, p2, p4}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 382
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {p1, p3}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    goto :goto_0

    .line 371
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    if-eqz v0, :cond_1

    .line 372
    new-instance p3, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 373
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result p2

    iget-object p4, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    invoke-direct {p3, p1, p2, p4}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 374
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {p1, p3}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    goto :goto_0

    .line 376
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {p1, p2, p3, p4}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onDoubleTapAndHold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 362
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    if-eqz v0, :cond_3

    .line 363
    new-instance p3, Landroid/accessibilityservice/AccessibilityGestureEvent;

    .line 364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result p2

    iget-object p4, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    invoke-direct {p3, p1, p2, p4}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    .line 365
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {p1, p3}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    goto :goto_0

    .line 367
    :cond_3
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {p1, p2, p3, p4}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    .line 385
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isClear()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    goto :goto_0

    :cond_0
    return v1

    .line 247
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 251
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    .line 252
    sget-boolean v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    const-string v3, "GestureManifold"

    if-eqz v2, :cond_4

    .line 253
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_4
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)I

    if-eqz v2, :cond_5

    .line 257
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_6
    return v1
.end method

.method public onStateChanged(IILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 331
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isGestureDetecting()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 p2, 0x11

    if-eq p1, p2, :cond_1

    const/16 p2, 0x12

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {p0}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureStarted()Z

    goto :goto_1

    .line 333
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    if-eqz p1, :cond_7

    .line 334
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {p0}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureStarted()Z

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 340
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/accessibility/gestures/GestureManifold;->onGestureCompleted(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    if-ne p2, p1, :cond_7

    .line 341
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->isGestureDetecting()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 344
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/accessibility/gestures/GestureMatcher;

    .line 345
    invoke-virtual {p2}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result p2

    if-ne p2, v0, :cond_4

    return-void

    .line 349
    :cond_5
    sget-boolean p1, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz p1, :cond_6

    const-string p1, "GestureManifold"

    const-string p2, "Cancelling."

    .line 350
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_6
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {p0, p3, p4, p5}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureCancelled(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public setMultiFingerGesturesEnabled(Z)V
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    if-eq v0, p1, :cond_1

    .line 394
    iput-boolean p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    if-eqz p1, :cond_0

    .line 396
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 398
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setSendMotionEventsEnabled(Z)V
    .locals 1

    .line 431
    iput-boolean p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    if-nez p1, :cond_0

    .line 433
    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 434
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setServiceHandlesDoubleTap(Z)V
    .locals 0

    .line 423
    iput-boolean p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    return-void
.end method

.method public setTwoFingerPassthroughEnabled(Z)V
    .locals 1

    .line 408
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    if-eq v0, p1, :cond_1

    .line 409
    iput-boolean p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    if-nez p1, :cond_0

    .line 411
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerSwipes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 412
    iget-boolean p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    if-eqz p1, :cond_1

    .line 413
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerSwipes:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 416
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerSwipes:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 417
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerSwipes:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method
