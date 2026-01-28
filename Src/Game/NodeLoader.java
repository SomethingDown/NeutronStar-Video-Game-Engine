package Game;

import static org.lwjgl.glfw.GLFW.*;

import org.joml.Vector3f;

import Game.Core.Node;
import Game.Visuals.Nodes.Sprite2D;
import UserIO.Input;



public class NodeLoader extends Node {
    
    Sprite2D socrat = new Sprite2D();

    @Override
    protected void _enterTree() {

        socrat.setTexture("Assets/Textures/Socrat.jpg");
        addChild(socrat);
    
    }

    @Override
    public void _update(float delta) {

        socrat.setLocalPosition(new Vector3f(
            (float)socrat.getLocalPosition().x+(float)Input.getAxis(GLFW_KEY_A, GLFW_KEY_D)*delta,
            (float)socrat.getLocalPosition().y+(float)Input.getAxis(GLFW_KEY_S, GLFW_KEY_W)*delta,
            0.0f)
        );

    }
}
